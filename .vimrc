set tabstop=4
set shiftwidth=4
set relativenumber
set ai
set si
set cursorline

set incsearch
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap " ""<Esc>
inoremap ' ''<Esc>
inoremap {<CR> {<CR>}<Esc>ko
filetype indent on


call plug#begin()
	Plug 'ryanoasis/vim-devicons'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'scrooloose/syntastic'
	Plug 'tpope/vim-commentary'
	Plug 'psliwka/vim-smoothie'
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-surround'
call plug#end()

set termguicolors


" Tokyo night
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1

colorscheme tokyonight

" NerdTree
nnoremap <C-t> :NERDTreeToggle<CR>

if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif


" Enable Syntastic statusline flag
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Always populate the location list with errors
let g:syntastic_always_populate_loc_list = 1

" Auto-open location list if errors are found
let g:syntastic_auto_loc_list = 1

" Check on file open (can be set to 0 for large files)
let g:syntastic_check_on_open = 1

" Check on write/quit (can be set to 0 for large files)
let g:syntastic_check_on_wq = 0

" Use flake8 for Python checking
" pip install flake8 first, and add the package to PATH
let g:syntastic_python_checkers=['flake8']

let g:syntastic_check_on_open = 1

"
let &t_EI = "\033[1 q" " NORMAL
let &t_SI = "\033[5 q" " INSERT
