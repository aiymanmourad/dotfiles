syntax enable 

set autoindent
set smartindent 
set encoding=utf8
set t_Co=256
set noshowmode
set background=dark

set guifont=DroidSansMono\ Nerd\ Font\:h21 

"=======================================================
"		      Vim Plug
"=======================================================

" initalize plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree' " nerdtree
Plug 'itchyny/lightline.vim' " lightline
"Plug 'vim-airline/vim-airline' " status / tabline 
"Plug 'vim-airline/vim-airline-themes' " airline themes
Plug 'bling/vim-bufferline'
Plug 'joshdick/onedark.vim' " onedark
Plug 'sts10/vim-pink-moon'
Plug 'mgee/lightline-bufferline' " show buffers in lightline
Plug 'tpope/vim-fugitive' " show git branch in status line
Plug 'junegunn/goyo.vim' " distraction free writing
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "completion
"Plug 'zchee/deoplete-clang' "completion for C/C++
Plug 'scrooloose/nerdcommenter' 
Plug 'Valloric/YouCompleteMe'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'NLKNguyen/c-syntax.vim'


Plug 'ryanoasis/vim-devicons'

call plug#end()

"=======================================================
"		      Color
"=======================================================


syntax on
"colorscheme pink-moon

"=======================================================
"		      Vim Config
"=======================================================

set nu "line numbers 
set scrolloff =7 "show seven lines around cursorline
set showtabline =2 "tabline always on

"=======================================================
"		      Bindings
"=======================================================

let base16colorspace=256



" toggle goyo
map <C-g> :Goyo<CR>

" toggle nerd tree
map <C-n> :NERDTreeToggle<CR>

"=======================================================
"		      Plugin Config
"=======================================================

" nerdtree config 

" autoclose nerdtree if it's last thing open
"autocmd bufenter *
"	\ if (winnr=("$") == 1 && exists("b:NERDTree")
"	\ && b:NerdTree.isTabTree()) | q | endif

function! NERDTreeHighlightFile(extension,fg,bg, guifg, guibg)
	exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg ='. a:bg .' ctermfg='. a:fg . ' guibg'. a:guibg .' guifg'. a:guifg
	exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+/.*'. a:extension . '$#'
endfunction

"call NERDTreeHighlightFile('conf','yellow','none','#d8a235','none')

let g:lightline = {
      \ 'component_function': {
      \   
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction


" lightline config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \	  'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat'
      \ },
      \ 'separator': {
      \   'left': '', 
      \   'right':''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \ }

let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

" integrate lightline-buffer in lightline
let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}

" deoplete config
let g:deoplete#enable_at_startup = 1 

"highlight Pmenu ctermbg=8 guibg=#606060
"highlight Pmenu ctermbg=1 guifg=#dddd00 guifg=#1f82cd
"highlight Pmenu ctermbg=0 guibg=#d6d6d6
