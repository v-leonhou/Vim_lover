set nocompatible              " be iMproved, required "不兼容vi模式

" To ignore plugin indent changes, instead use:

filetype on                  " 开启文件类型侦测
filetype plugin on           " 根据侦测到的不同类型加载对应的插件

" 开启插件, 如果vim里面装了插件必须要开启此选项才可以用插件,
" 开启文件类型检测
"filetype plugin indent on    " required


syntax enable                      "开启语法高亮
syntax on                          "允许用指定语法高亮配色方案替换默认方案



"设置主题
set background=dark
let g:solarized_termcolors=16
let g:Powerline_colorsscheme='solarized256'        " 设置状态栏主题风格

" solarized 主题配色，需要安装vim-colors-solarized插件开启
"Solarized VIM color scheme
"colorscheme solarized
"colorscheme solarized



"设置vi打开文件字符编码
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

"set completeopt -=preview

set relativenumber                  " 相对行号
set nu                              " 显示行号
set numberwidth=3                   " 行号宽度
set autoindent                      " 自动对齐
set shiftwidth=4
set ts=4                            " 设置tab宽度为四个空格
set smartindent                     " 智能对齐方式
set autoindent                      " automatically indent new line, 自动对齐
set showmatch                       " 高亮显示匹配括号, 在输入括号时光标会短暂地跳到与之相匹配的括号处
set matchtime=2                     " 匹配括号高亮的时间（单位是十分之一秒）
set lbr                             " 智能换行
set magic                           " 选择括号自动匹对闭合的括号

set foldenable                      " 允许自动折叠
set foldmethod=marker               " 设置折叠的函数为marker， markervi自带
set foldcolumn=0                    " 设置折叠的宽度, 就是折叠之后到底显示几行
setlocal foldlevel=10               " 折叠层级, 最多最外层这贴包含多少个折叠


" 搜索
set incsearch                       " 当vi中查找的时候从键入时就开始匹配
set hlsearch                        " 高亮搜索结果
set ignorecase                      " 搜索时不区分大小写，如果键入了大写字母则区分大小写 

" 撤销配置，在vim新版, 才有用
set undodir=~/tmp/                  " 撤销缓存目录
set undofile                        " 撤销文件, 当关闭文件之后，重新打开还可以无限撤销到最原始的文件


set noswapfile                                     " 设置不生成swp文件


" 输入补全
set wildmenu                        " vim 自身命令行模式智能补全


"设置插入模式光标为竖线
if has("autocmd")
        au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
        au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
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
Plugin 'php.vim'
Plugin 'git://git.wincent.com/command-t.git'   " Git plugin not hosted on GitHub
Plugin 'altercation/vim-colors-solarized'       " 一款主题配色

"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
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



"vimrc保存自动生效，重启vim
autocmd BufWritePost $MYVIMRC source $MYVIMRC
