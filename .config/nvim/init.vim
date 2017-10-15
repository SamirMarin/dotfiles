" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
source ~/.vim/vimrc
"call plug#begin('~/.config/nvim/plugged')
"
"" Make sure you use single quotes
"
"" fugitive
"Plug 'https://github.com/tpope/vim-fugitive.git'
"
"" On-demand loading
"Plug 'scrooloose/nerdtree'
"
"" vim-ruby
"Plug 'vim-ruby/vim-ruby'
"
"" ack.vim
"Plug 'mileszs/ack.vim'
"
"
"" fzf fuzzy search
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
"
"Plug 'junegunn/fzf.vim'
"
"
"" Initialize plugin system
"call plug#end()
"
"set nocompatible      " We're running Vim, not Vi!
"syntax on             " Enable syntax highlighting
"filetype on           " Enable filetype detection
"filetype indent on    " Enable filetype-specific indenting
"filetype plugin on    " Enable filetype-specific plugins
"colorscheme Tomorrow-Night
"set colorcolumn=90 "sets the far right column
"set number
"set nowrap
"set tabstop=2
"set shiftwidth=2
"set expandtab
"set smartindent
"set autoindent
""speed things up by setting more info in mem
"set hidden
"set history=100
"set showmatch "shows the matching paranthesis
""map for esc to jk
":imap jk <Esc>
""fonts for vim and size
"set guifont=Menlo\ Regular:h14
""remove white spece on save
""autocmd BufWritePre * :%s/\s\+$//e
""When running a search, get Vim to highlight found words:
"set hlsearch
""Ability to cancel a search with Escape
""nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
""allows you to quickly move back and forth between two files by pressing the Leader key twice.
""nnoremap <Leader><Leader> :e#<CR>
"set cursorline "hightlight the line
":let g:NERDTreeWinSize=40
"set relativenumber
"let mapleader = " "
""for ctrx ctrp to not choose random
"set completeopt=longest,menuone
""highlight as you search
"set incsearch
""setting the ruby omini for neo vim
"let g:rubycomplete_rails = 1
"
""leader mappings
"nnoremap <leader>x :noh<enter>
"nnoremap <leader>f :Files<enter>
"nnoremap <leader>b :Buffer<enter>
"nnoremap <leader>r :set relativenumber<enter>
"nnoremap <leader>n :set norelativenumber<enter>
"nnoremap <leader>s :%s//
"nnoremap <leader>h :res 
"nnoremap <leader>w :vertical resize 
