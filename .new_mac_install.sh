# https://github.com/daipeihust/im-select
curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh

#lVim PLug for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim Plug for NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Swift Sourcekit-lsp
ln -s /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp /usr/local/bin

