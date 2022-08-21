

" import custom system local config
source ~/.config/nvim/custom.vim

" Plugins managed by vim-plug
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
  silent! execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
silent! if plug#begin()
  Plug 'tpope/vim-sensible'
  call plug#end()
endif
