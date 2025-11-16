set tabstop=4
set shiftwidth=4

set relativenumber
set ai
set si

set incsearch
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
