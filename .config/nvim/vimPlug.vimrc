
call plug#begin()
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'mgee/lightline-bufferline'
	Plug 'itchyny/lightline.vim', {'commit': '78c43c1'}
	Plug 'itchyny/vim-gitbranch'
	Plug 'airblade/vim-rooter'
	Plug 'airblade/vim-gitgutter'
	Plug 'preservim/nerdcommenter'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/rainbow_parentheses.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'ryanoasis/vim-devicons'
	" Plug 'matze/vim-move'
	" Plug 'kaisucode/vim-substitution'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'jiangmiao/auto-pairs'
	" Plug 'mhinz/vim-startify'
	Plug 'dhruvasagar/vim-table-mode'
	Plug 'pbrisbin/vim-mkdir'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-endwise'
	Plug 'tpope/vim-rails'
	Plug 'vim-ruby/vim-ruby'
	Plug 'ap/vim-css-color'
	Plug 'yuezk/vim-js'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'posva/vim-vue'
	Plug 'wlangstroth/vim-racket'
	Plug 'gabrielelana/vim-markdown'
	Plug 'chmp/mdnav'
	Plug 'calviken/vim-gdscript3'
	Plug 'sbdchd/neoformat'
	Plug 'mattn/emmet-vim'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()



"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
autocmd! bufwritepost vimPlug.vimrc source $HOME/.config/nvim/init.vim

