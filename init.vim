"call auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim autocmd VimEnter * PlugInstall autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Themes
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim'

" Pretty icons
" Plug 'ryanoasis/vim-devicons'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python
Plug 'Vimjas/vim-python-pep8-indent'

" TOML syntax highlighting
Plug 'cespare/vim-toml'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Treesitter
" Note: install language with: TSInstall {language}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" File explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Better vue syntax highlighting
" Plug 'posva/vim-vue'

" A lot of nice syntax
Plug 'sheerun/vim-polyglot'

" Autoclose 
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Commentary (comment out code)
Plug 'tpope/vim-commentary'

" Codi
Plug 'metakirby5/codi.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Theme 
syntax enable
set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme

" colorscheme ayu
colorscheme ayu 

" General sets
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set tabstop=2
set shiftwidth=2
" set smartindent
set nobackup
set noswapfile
set number
set background=dark
" set t_Co=256
set nowrap
"set spell
set spelllang=en,nl
set guifont=Fira\ Code
" Vim WIKI
set nocompatible
filetype plugin on
syntax on

"--- General shortcuts ---

" Use just ctr+hjkl to move windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Buffer navigation
nnoremap <leader>q <cmd>bp<CR>
nnoremap <leader>w <cmd>bd<CR>
nnoremap <leader>e <cmd>bn<CR>



" --- Plugin Settings --- 

" Telescop settings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fr <cmd>Telescope registers<cr>

nnoremap <leader>fn <cmd>lua require('twanh.tele').search_notes()<CR>
nnoremap <leader>fs <cmd>lua require('twanh.tele').search_school()<CR>

" Codi settings
highlight CodiVirtualText guifg=cyan
let g:codi#virtual_text_prefix = "❯ "

" Git settings
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" Commentary
nnoremap <leader>\ :Commentary<CR>
vnoremap <leader>\ :Commentary<CR>


" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter='unique_tail'
" enable powerline fonts
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'ayu'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

"Nvim Tree icons settings
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] 
let g:nvim_tree_auto_open = 1
let g:nvim_tree_auto_close = 1 " Closes when it's the last window
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_show_icons = {
			\'git': 1,
			\'folders': 1,
			\'files': 1,
			\}
" highlight NvimTreeFolderIcon guibg=blue

nnoremap <leader>b :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" highlight NvimTreeFolderIcon guibg=blue

" --- COC SETTINGS --- 
" refrence: https://github.com/neoclide/coc.nvim
" --------------------

" GoTo definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" K to show docs
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Use <c-space> to trigger completion.
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.

if has("patch-8.1.1564")
	set signcolumn=number
else
	set signcolumn=yes
endif


" Markdown settings
" Disables folding by default
let g:vim_markdown_folding_disabled = 1
" Enables math
let g:vim_markdown_math = 1
" Enables strike-trough
let g:vim_markdown_strikethrough = 1 
" Auto write when following a link
let g:vim_markdown_autowrite = 1
" Enables front matter
let g:vim_markdown_frontmatter = 1

" WSL yanking
" let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point

" if executable(s:clip)
"   augroup WSLYank
"     autocmd!
"     autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
"   augroup END
" endif

