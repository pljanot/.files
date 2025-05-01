if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Disable annoying beeping
set noerrorbells
set vb t_vb=
set so=5

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'flazz/vim-colorschemes'

call plug#end()
" require'nvim_lsp'.pyls.setup{ on_attach=require'completion'.on_attach }
" require'nvim_lsp'.yamlls.setup{ on_attach=require'completion'.on_attach }
" require'nvim_lsp'.gopls.setup{ on_attach=require'completion'.on_attach }

lua <<EOF
require'nvim_lsp'.pyls.setup{ on_attach=require'completion'.on_attach }
require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
EOF

set smartindent
set autoindent
colorscheme gruvbox
set background=dark


" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"
" " Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
"
" " Avoid showing message extra message when using completion
set shortmess+=c

let mapleader = " "

" Better clipboard integration
if exists('$TMUX')
  vnoremap <leader>y "ry :call system('xclip -selection clipboard', @r)<CR>
  nnoremap <leader>p :let @r=system('xclip -selection clipboard -o')<CR>"rp
else
  vnoremap <leader>y "+y
  nnoremap <leader>p "+p
endif



