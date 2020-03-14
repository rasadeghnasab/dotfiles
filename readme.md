# Vim files

### Windows
You should use `mklink` command to link `.vimrc` and `plugins.vim` files to your home directory

.vimrc should link to ~/.vimrc using this command:

```
mklink c:\Users\YOUR_USERNAME\.vimrc path_to_this_repo\dotvim\.vimrc
```

plugins.vim should link to ~/.vim/plugins.vim

```
mklink c:\Users\YOUR_USERNAME\.vim\plugins.vim path_to_this_repo\dotvim\.vim\plugins.vim
```
