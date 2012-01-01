# Run from the same directory as the script

ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/bash_aliases ~/.bash_aliases
if [ ! -L ~/.vim ]; then
    ln -s $PWD/vim/ ~/.vim
fi

mkdir -p vim/autoload
mkdir -p vim/bundle

# grab latest pathogen
wget -O vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

pushd vim/bundle

# grab vim-indent-guides plugin
git clone git://github.com/nathanaelkane/vim-indent-guides.git

# grab command-t plugin and compile the C extension
git clone git://git.wincent.com/command-t.git
pushd command-t/ruby/command-t
ruby extconf.rb
make
popd

popd
