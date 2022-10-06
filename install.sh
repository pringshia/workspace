mkdir ~/dotfiles

echo "source ~/dotfiles/zshrc" >> ~/.zshrc
echo "source <(antibody init)" >>~/dotfiles/zshrc
echo "antibody bundle romkatv/powerlevel10k" >>~/dotfiles/zshrc
echo "antibody bundle zsh-users/zsh-syntax-highlighting" >>~/dotfiles/zshrc
echo "source ~/dotfiles/.p10k.zsh" >>~/dotfiles/zshrc
echo "source ~/dotfiles/aliases.zsh" >>~/dotfiles/zshrc
echo "source <(fasd --init auto)" >>~/dotfiles/zshrc

curl -L https://github.com/clvv/fasd/tarball/1.0.1 > /tmp/fasd-zipped.tar.gz
mkdir /tmp/fasd
tar -xvf /tmp/fasd-zipped.tar.gz -C /tmp/fasd --strip-components=1
make -C /tmp/fasd install

curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
curl -L https://gist.githubusercontent.com/pringshia/7b5c03790474e3df0d14885bb0e06ee1/raw > ~/dotfiles/.p10k.zsh
curl -L https://gist.githubusercontent.com/pringshia/c1632e7b16560d73da41c8a7ec6f7476/raw > ~/dotfiles/aliases.zsh

curl -L https://github.com/so-fancy/diff-so-fancy/releases/download/v1.4.3/diff-so-fancy > /tmp/diff-so-fancy
install /tmp/diff-so-fancy /usr/local/bin

echo 'git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"' >>~/dotfiles/zshrc
echo 'git config --global interactive.diffFilter "diff-so-fancy --patch"' >>~/dotfiles/zshrc
