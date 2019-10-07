# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# mas
brew install mas

# alfred - version 3
# https://www.alfredapp.com/help/v3/

brew bundle

# Git Config
git config --global user.name "Kwon Young Jae"
git config --global user.email "kyoje11@gmail.com""
git config --global core.precomposeunicode true
git config --global core.quotepath false


# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# copy .zshrc
cp .zshrc ~/.zshrc
source ~/.zshrc


# Theme
npm install --global pure-prompt
source ~/.zshrc

# Git plugin
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc
