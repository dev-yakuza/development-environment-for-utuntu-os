# sudo apt install -y git
sudo apt update

# pyenv
sudo apt install -y build-essential libffi-dev libssl-dev zlib1g-dev liblzma-dev libbz2-dev libreadline-dev libsqlite3-dev libopencv-dev tk-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
source ~/.bashrc

# VSCode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

code --install-extension AlanWalk.markdown-toc
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension esbenp.prettier-vscode
code --install-extension felixfbecker.php-intellisense
code --install-extension fterrag.vscode-php-cs-fixer
code --install-extension gencer.html-slim-scss-css-class-completion
code --install-extension jcbuisson.vue
code --install-extension leizongmin.node-module-intellisense
code --install-extension mf.vscode-styled-components
code --install-extension ms-python.python
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension redhat.vscode-yaml
code --install-extension RoscoP.ActiveFileInStatusBar
code --install-extension shardulm94.trailing-spaces
code --install-extension vscode-icons-team.vscode-icons
code --install-extension johnuphoff.vscode-styled-sort
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension onecentlin.laravel5-snippets
code --install-extension onecentlin.laravel-blade
code --install-extension ryannaddy.laravel-artisan
code --install-extension felixfbecker.php-debug
code --install-extension felixfbecker.php-pack
code --install-extension dbaeumer.vscode-eslint
code --install-extension rebornix.ruby
code --install-extension kaiwood.endwise
code --install-extension misogi.ruby-rubocop
code --install-extension pnp.polacode
code --install-extension editorconfig.editorconfig
code --install-extension formulahendry.auto-rename-tag
code --install-extension devzstudio.emoji-snippets
code --install-extension eamodio.gitlens
code --install-extension jebbs.plantuml
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extension mutantdino.resourcemonitor
code --install-extension ryu1kn.partial-diff
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension wingrunr21.vscode-ruby
code --install-extension dart-code.flutter
code --install-extension sleistner.vscode-fileutils
code --install-extension hashicorp.terraform
code --install-extension octref.vetur
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension ms-vscode.powershell

# NVM & Node
sudo apt install -y curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm install v12.16.1
npm install --global yarn
npm install -g @vue/cli

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install -y google-chrome-stable

# Open shortcut
echo 'alias open="nautilus"' >> ~/.bashrc

# Mouse scroll
touch ~/.vmx
echo 'mouse.vusb.enable = "TRUE"' >> ~/.vmx
echo 'mouse.vusb.useBasicMouse = "FALSE"' >> ~/.vmx
echo 'mks.mouse.pixelScrollSensitivity = "1"' >> ~/.vmx

# Install japanese
sudo apt install -y ibus-anthy
ibus restart