To install vundle:

```bash
cd ~/.vim/bundle && git clone https://github.com/gmarik/Vundle.vim
```

after that:

```
vim +PluginInstall +qall
```

To install YouCompleteMe:

```
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
```