FROM debian:stable-slim

RUN apt update && apt install -y git zsh nano vim curl make
RUN 
RUN mkdir ~/dotfiles
RUN echo "source ~/dotfiles/zshrc" >> ~/.zshrc
RUN 
RUN 
RUN echo "source <(antibody init)" >>~/dotfiles/zshrc
RUN echo "antibody bundle romkatv/powerlevel10k" >>~/dotfiles/zshrc
RUN echo "antibody bundle zsh-users/zsh-syntax-highlighting" >>~/dotfiles/zshrc
RUN echo "source ~/dotfiles/.p10k.zsh" >>~/dotfiles/zshrc
RUN echo "source ~/dotfiles/aliases.zsh" >>~/dotfiles/zshrc
RUN echo "source <(fasd --init auto)" >>~/dotfiles/zshrc

RUN curl -L https://github.com/clvv/fasd/tarball/1.0.1 > /tmp/fasd-zipped.tar.gz
RUN mkdir /tmp/fasd
RUN tar -xvf /tmp/fasd-zipped.tar.gz -C /tmp/fasd --strip-components=1
RUN make -C /tmp/fasd install

RUN curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
RUN curl -L https://gist.githubusercontent.com/pringshia/7b5c03790474e3df0d14885bb0e06ee1/raw > ~/dotfiles/.p10k.zsh
RUN curl -L https://gist.githubusercontent.com/pringshia/c1632e7b16560d73da41c8a7ec6f7476/raw > ~/dotfiles/aliases.zsh

RUN mkdir ~/tools
RUN curl -L https://github.com/so-fancy/diff-so-fancy/releases/download/v1.4.3/diff-so-fancy > ~/tools/diff-so-fancy
RUN chmod +x ~/tools/diff-so-fancy

RUN echo 'git config --global core.pager "~/tools/diff-so-fancy | less --tabs=4 -RFX"' >>~/dotfiles/zshrc
RUN echo 'git config --global interactive.diffFilter "~/tools/diff-so-fancy --patch"' >>~/dotfiles/zshrc

CMD [ "zsh" ]
