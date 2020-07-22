
call plug#begin()
	Plug 'ap/vim-css-color'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'itchyny/vim-gitbranch'
	Plug 'airblade/vim-gitgutter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mgee/lightline-bufferline'
	" Plug 'matze/vim-move'
	Plug 'itchyny/lightline.vim', {'commit': '78c43c1'}
	Plug 'tell-k/vim-autopep8'
	Plug 'junegunn/goyo.vim'
	" Plug 'kaisucode/vim-substitution'
	Plug 'junegunn/rainbow_parentheses.vim'
	Plug 'tpope/vim-surround'
	Plug 'dhruvasagar/vim-table-mode'
	Plug 'pbrisbin/vim-mkdir'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'vim-scripts/indentpython.vim'
	Plug 'wlangstroth/vim-racket'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'calviken/vim-gdscript3'
	Plug 'airblade/vim-rooter'
call plug#end()



"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
autocmd! bufwritepost vimPlug.vimrc source $HOME/.config/nvim/init.vim
" augroup autosourcing
"   autocmd!
"   autocmd BufWritePost vimPlug.vimrc source init.vim
" augroup END

