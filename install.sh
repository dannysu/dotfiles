#!/bin/bash
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
        git clone "$2" "$1"
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
#install_vim_plugin nerdtree git://github.com/scrooloose/nerdtree.git

# install NERDCommenter plugin
install_vim_plugin nerdcommenter git://github.com/scrooloose/nerdcommenter.git

# install Gundo plugin
#install_vim_plugin gundo.vim git://github.com/sjl/gundo.vim.git

# install syntastic plugin
#install_vim_plugin syntastic git://github.com/scrooloose/syntastic.git

# install tagbar
install_vim_plugin tagbar git://github.com/majutsushi/tagbar.git

# install ZoomWin
install_vim_plugin ZoomWin git://github.com/vim-scripts/ZoomWin.git

# install EasyMotion
install_vim_plugin vim-easymotion git://github.com/Lokaltog/vim-easymotion.git

# install SuperTab
#install_vim_plugin supertab git://github.com/ervandew/supertab.git

# install NrrwRgn
install_vim_plugin NrrwRgn git://github.com/chrisbra/NrrwRgn.git

# install xdebug plugin
install_vim_plugin vim-xdebug git://github.com/ludovicPelle/vim-xdebug.git

# install pydoc plugin
install_vim_plugin pydoc.vim https://github.com/fs111/pydoc.vim.git

# install align.vim
install_vim_plugin vim-align https://github.com/jezcope/vim-align.git

# install ScreenShell
install_vim_plugin screenshell https://github.com/ervandew/screen.git

# install haskellmode-vim
install_vim_plugin haskellmode-vim https://github.com/lukerandall/haskellmode-vim.git

popd 1>/dev/null
