set relativenumber number
set hidden

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
  Plug 'tpope/vim-obsession'
  Plug 'adborden/vim-notmuch-address'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  call plug#end()
endif

" Enable filetype based indent config and syntax highlighting
" Pasting code can cause issues with ident on, unless we use ":set paste"
" Can use plugins like "tpope/vim-unimpaired" or
" "ConradIrwin/vim-bracketed-paste"
syntax on
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>

" Output of :grep should go to cwindow
autocmd QuickFixCmdPost *grep* cwindow

