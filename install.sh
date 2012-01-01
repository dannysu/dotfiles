ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases
if [ ! -L ~/.vim ]; then
    ln -s ~/.dotfiles/vim/ ~/.vim
fi

mkdir -p ~/.dotfiles/vim/autoload
mkdir -p ~/.dotfiles/vim/bundle

# grab latest pathogen
wget -O ~/.dotfiles/vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

pushd ~/.dotfiles/vim/bundle

# grab vim-indent-guides plugin
git clone git://github.com/nathanaelkane/vim-indent-guides.git

# grab command-t plugin and compile the C extension
git clone git://git.wincent.com/command-t.git
pushd command-t/ruby/command-t
ruby extconf.rb
make
popd

popd
