#!/bin/bash
# python
sudo apt-get install -y python3.9
sudo apt-get install -y python3.10

# virtualenv
pip3 install --no-input virtualenv

# pyenv 
curl https://pyenv.run | bash 

echo '' >> ~/.bashrc
echo '# added by for pyenv' >> ~/.bashrc
echo 'export PYENV_ROOT=\"$HOME/.pyenv\"' >> ~/.bashrc
echo 'export PATH=\"$PYENV_ROOT/bin:$PATH\"' >> ~/.bashrc
echo 'eval \"$(pyenv init --path)\"' >> ~/.bashrc

apt-get update; sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

pyenv global 3.9

# poetry
curl -sSL https://install.python-poetry.org | python - --version 1.1.15

echo '# added by for poetry' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

