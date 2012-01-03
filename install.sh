# Run from the same directory as the script

ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases
if [ ! -L ~/.vim ]; then
    ln -s $PWD/vim/ ~/.vim
fi

mkdir -p vim/autoload
mkdir -p vim/bundle

# install latest pathogen
wget -O vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

function install_vim_plugin {
    if [ ! -d "$1" ]; then
        git clone "$2"
    fi
    pushd "$1" 1>/dev/null
    git pull
    popd 1>/dev/null
}

pushd vim/bundle 1>/dev/null

# install vim-indent-guides plugin
install_vim_plugin vim-indent-guides git://github.com/nathanaelkane/vim-indent-guides.git

# install command-t plugin and compile the C extension
#install_vim_plugin command-t git://git.wincent.com/command-t.git
install_vim_plugin Command-T git://github.com/dannysu/Command-T.git
pushd Command-T/ruby/command-t 1>/dev/null
ruby extconf.rb
make
popd 1>/dev/null

# install lusty-explorer and lusty-juggler
install_vim_plugin lusty git://github.com/sjbach/lusty.git

# install fugitive for git
install_vim_plugin vim-fugitive git://github.com/tpope/vim-fugitive.git

# install NERDtree plugin
install_vim_plugin nerdtree git://github.com/scrooloose/nerdtree.git

# install Gundo plugin
install_vim_plugin gundo.vim git://github.com/sjl/gundo.vim.git

# install syntastic plugin
install_vim_plugin syntastic git://github.com/scrooloose/syntastic.git

# install tagbar
install_vim_plugin tagbar git://github.com/majutsushi/tagbar.git

# install ZoomWin
install_vim_plugin ZoomWin git://github.com/vim-scripts/ZoomWin.git

popd 1>/dev/null
