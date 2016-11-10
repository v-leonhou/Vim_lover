set nocompatible              " be iMproved, required

" To ignore plugin indent changes, instead use:
"filetype plugin on
filetype on                  " required
filetype plugin on
filetype plugin indent on    " required

"设置不生成swp文件
set noswapfile

"设置vi打开文件字符编码
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

"set completeopt -=preview

set relativenumber
set nu
set autoindent
set shiftwidth=4
set hlsearch
"设置tab宽度为四个空格
set ts=4

"设置插入模式光标为竖线 有些系统不支持
if has("autocmd")
        "au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
        "au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif

"定义快捷键的前缀键
let mapleader=";"

"设置NERDTree的快捷键ctr+n,NERDTree相关命令
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=20
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1

" 显示/隐藏 MiNiBufExplorer窗口
map <Leader>f :MBEToggle<cr>
"buffer 切换快捷键
map <leader>a :MBEbn<cr>
map <leader>d :MBEbp<cr>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
" The following are examples of different formats supported.

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'altercation/vim-colors-solarized'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'fholgado/minibufexpl.vim'
Plugin 'joonty/vdebug'
"Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'php.vim'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"开启语法高亮
syntax enable

"允许用指定语法高亮配色方案替换默认方案
syntax on

"设置主题
"Solarized VIM color scheme
set background=dark
let g:solarized_termcolors=16
"colorscheme solarized
"colorscheme solarized

"设置状态栏主题风格
let g:Powerline_colorsscheme='solarized256'

"vimrc保存自动生效，重启vim
autocmd BufWritePost $MYVIMRC source $MYVIMRC
