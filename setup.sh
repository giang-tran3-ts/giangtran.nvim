conda activate
# python
pip install pyright isort black 

# c++
sudo apt-get install clangd-12
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

# ctags / Vista nvim
sudo apt-get install libjansson-dev
git clone https://github.com/universal-ctags/ctags.git --depth=1
cd ctags
./autogen.sh
./configure
make
sudo make install

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
