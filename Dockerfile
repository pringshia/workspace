FROM debian:stable-slim

RUN apt update && apt install -y git zsh nano vim curl make
RUN apt update && apt install -y build-essential
# RUN apt update && apt install -y neovim=0.7.2
COPY install.sh /tmp/install.sh
RUN chmod +rx /tmp/install.sh
RUN /tmp/install.sh

WORKDIR /root

# v----
# Install homebrew, for now just for neovim which is def overkill
RUN curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
RUN chmod +rx ./install.sh
RUN NONINTERACTIVE=1 ./install.sh

RUN echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /root/.zprofile
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.zprofile
RUN apt update && apt install -y procps
RUN chsh -s $(which zsh)
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Neovim
RUN /home/linuxbrew/.linuxbrew/bin/brew install neovim
# RUN brew install neovim


RUN echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /root/.zshenv
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.zshenv
RUN chsh -s $(which zsh)
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# ^----

# v----
# One-time setup stuff, e.g. install packer 
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +rx /tmp/entrypoint.sh

# Copy over configuration for neovim
RUN mkdir -p  /tmp/.config/nvim
RUN mkdir -p $HOME/.config/nvim
COPY .config/nvim/ /tmp/.config/nvim/
RUN cp -R /tmp/.config/nvim $HOME/.config/
# ^----

ENTRYPOINT zsh -ic /tmp/entrypoint.sh && zsh
# ENTRYPOINT [ "zsh" ]
# CMD [ "zsh" ]
