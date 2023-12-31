apt update
apt upgrade -y # Yes for all
apt install python3 python-pip rust binutils-is-llvm python-cryptography vim git curl
pip install ipython pudb ipdb

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


python3 -m venv .local/share/pypoetry/venv
cd .local/share/pypoetry/venv/bin
pip install -U pip setuptools
pip install poetry

cd

ln -s .local/share/pypoetry/venv/bin/poetry .local/bin/poetry
ls -l .local/bin/poetry

mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions





git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

apt install build-essential cmake vim-nox python3-dev
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

git clone https://github.com/DREU007/DREU007
cp DREU007/.vimrc .

vim .zshrc
# export PATH="$HOME/.local/bin:$PATH"
# plugins=(git, poetry, zsh-syntax-highlighting, zsh-autosuggestions)
# ZSH_THEME="powerlevel10k/powerlevel10k"
source .zshrc
