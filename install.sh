#!/bin/bash
sudo apt-get install curl git make

# virtualenv
pip3 install --no-input virtualenv

# pyenv 
curl https://pyenv.run | bash 

echo '' >> ~/.bashrc
echo '# added by for pyenv' >> ~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.bashrc

apt-get update; sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# poetry
curl -sSL https://install.python-poetry.org | python - --version 1.1.15

echo '' >> ~/.bashrc
echo '# added by for poetry' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

# pyenv setting
pyenv install 3.9.16
pyenv install 3.10.9
pyenv install 3.11.1
pyenv global 3.9.16
