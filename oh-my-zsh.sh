LINE="==================================="

yum insatll zsh -y
zsh --version
echo ${LINE}

yum insatll wget -y
wget --version
echo ${LINE}

# install on my zsh && change to zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo ${LINE}

easy_install pip
pip --version
echo ${LINE}

pip install powerline-status --user
echo ${LINE}

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
echo ${LINE}

# install theme
cd ~/.oh-my-zsh/custom/theme/
git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
cd oh-my-zsh-agnoster-fcamblor/
./install
vim ~/.zshrc; source ~/.zshrc; # agnoster
echo ${LINE}

# install plugin
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions
vim ~/.zshrc; source ~/.zshrc; # add plugins=(zsh-autosuggestions) # ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
echo ${LINE}

cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
vim ~/.zshrc; source ~/.zshrc;
echo ${LINE}

