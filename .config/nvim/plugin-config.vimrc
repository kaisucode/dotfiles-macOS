

"-------------Plugins--------------"
"
"/
"/ vim-substitution
"/
" let g:substitution_fullwordmatch = 1
" let g:substitution_global = 1
" let g:substitution_confirmation = 0

"/
"/ NERDTree
"/
" Key binding for NERDTreeToggle
function! MyNerdToggle()
	if &filetype == 'nerdtree'
		:NERDTreeToggle 
	else
		:NERDTreeFind
	endif
endfunction
nnoremap <Leader><tab> :call MyNerdToggle()<CR>
set encoding=utf8
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1		"Show hidden files
let NERDTreeQuitOnOpen=1			"Close NERDTree if a file is opened

"Ignoring files
let NERDTreeIgnore=['node_modules$[[dir]]', '__pycache__$[[dir]]', '.git$[[dir]]', '.exe', '.pyc', '.class', '.zip', '.netrwhist']

" Open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" After a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
	call webdevicons#refresh()
endif

" Disable netrw and replace it with nerdtree
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1



"/
"/ lightline
"/
set noshowmode								"Remove ---insert--- below status bar

let g:lightline = {
	  \ 'colorscheme': 'Dracula',
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ],
	  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	  \ },
	  \ 'component_function': {
	  \   'gitbranch': 'gitbranch#name', 
	  \   'filetype': 'MyFiletype', 
	  \   'fileformat': 'NONE', 
	  \   'fileencoding': 'NONE', 
	  \ },
	  \ }
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction


"/
"/ lightline-bufferline
"/

let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline.tabline          = {'left': [['buffers']], 'right': []}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#filename_modifier = ':t'				" Only show filename (no path)

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)


"/
"/ UltiSnips
"/
let g:UltiSnipsExpandTrigger = '<C-j>'
"let g:UltiSnipsExpandTrigger = '<Enter>'

"/
"/ vim-gitgutter
"/
set updatetime=250


"/
"/ auto-pairs (complete brackets, quotes, and paranthesis)
"/
let g:AutoPairsMultilineClose = 0

"/
"/ nerdcommenter
"/
let g:NERDSpaceDelims = 1					" Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1				" Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'				" Align line-wise comment delimiters flush left instead of following code indentation
" Ctrl-/ to comment (vim registers _ instead of /)
imap <C-_> <C-o><leader>c<Space>
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>


"/
"/ vim-move
"/
" Set custom modifier (Currently is bind to ALT)
" let g:move_key_modifier = 'C'


" MacOS
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


"/
"/ vim-autopep8
"/
let g:autopep8_disable_show_diff=1
autocmd FileType python noremap <buffer> <F7> :call Autopep8()<CR>

"/
"/ Rainbow Parentheses
"/
" Changes colors of parantheses
" augroup rainbow
"   autocmd!
"   autocmd FileType c,java,cpp RainbowParentheses
" augroup END


"/
"/ vim-surround
"/
" Documentation
" https://github.com/tpope/vim-surround
" https://stackoverflow.com/a/25555008


"/
"/ deoplete
"/ 
let g:deoplete#enable_at_startup = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"


"/
"/ fzf
"/ 
nnoremap <Leader><space> :FZF<CR>



"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

autocmd! bufwritepost plugin-config.vimrc source $HOME/.config/nvim/init.vim




