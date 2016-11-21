filetype on                  " 开启文件类型侦测
filetype plugin on           " 根据侦测到的不同类型加载对应的插件,  忽视插件改变缩进

filetype plugin indent on    " Vundle 必须开启, 加载vim自带和插件相应的语法和文件类型相关脚本

syntax enable                      "开启语法高亮
syntax on                          "允许用指定语法高亮配色方案替换默认方案
syntax sync fromstart

" 环境设置
if has('gui_running') && has('gui_win32')
    " 配置文件变量
    let g:my_vimrc = $HOME.'\vimfiles\vimrc'
    let g:vimrc_home = $HOME.'\vimfiles'

    set guifont = Bitstream_Vera_Sans_Mono:h11:cANSI " 英文字体
    set guifontwide = simhei:h11:cGB2312 " 英文字体
elseif has('unix')
    let g:my_vimrc = '/vagrant/data/Vim_lover/vimrc'
    let g:vimrc_home = '/vagrant/data/Vim_lover'
endif


" VIM 显示配置
" solarized 主题配色，需要安装vim-colors-solarized插件开启
"Solarized VIM color scheme
colorscheme default 
"colorscheme phd
"colorscheme molokai 
"colorscheme solarized
set background=dark

set laststatus=2                    " 总是显示状态栏
set ruler                           " 显示光标当前位置
"set cursorline                      " 高亮显示当前行
"set cursorcolumn                    " 高亮显示当前列

set guifont=YaHei\ Consolas\ Hybrid\ 11.5
set nowrap                          " 没有wrap文件

"设置vi打开文件字符编码
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set completeopt -=preview

set nocompatible                    " be iMproved, required "不兼容vi模式
set relativenumber                  " 相对行号
set nu                              " 显示行号
set numberwidth=2                   " 行号宽度
set autoindent                      " 自动对齐
set expandtab                       " 将制表符扩展为空格
set tabstop=4                       " 设置编辑时制表符占用空格数
set shiftwidth=4                 	" 设置格式化时制表符占用空格数
set softtabstop=4                   " 将vim把连续数量空格视为制表符
set ts=4                            " 设置tab宽度为四个空格
set smartindent                     " 智能对齐方式
set autoindent                      " automatically indent new line, 自动对齐
set showmatch                       " 高亮显示匹配括号, 在输入括号时光标会短暂地跳到与之相匹配的括号处
set matchtime=2                     " 匹配括号高亮的时间（单位是十分之一秒）
set lbr                             " 智能换行
set magic                           " 选择括号自动匹对闭合的括号

" 搜索
set incsearch                       " 当vi中查找的时候从键入时就开始匹配
set hlsearch                        " 高亮搜索结果
set ignorecase                      " 搜索时不区分大小写，如果键入了大写字母则区分大小写 
set noswapfile                                     " 设置不生成swp文件
set wildmenu                        " vim 自身命令行模式智能补全

" 代码折叠
set nofoldenable                    " 启动vim时关闭折叠代码
set foldmethod=indent               " 基于缩进折叠
set foldcolumn=0                    " 设置折叠的宽度, 就是折叠之后到底显示几行
setlocal foldlevel=10               " 折叠层级, 最多最外层这贴包含多少个折叠
"set foldmethod=syntax              " 基于语法折叠
"set foldenable                      " 允许自动折叠
"set foldmethod=marker               " 设置折叠的函数为marker， markervi自带

    " 撤销缓存目录,撤销文件, 当关闭文件之后，重新打开还可以无限撤销到最原始的文件
if exists("&undodir")
    exec 'set undodir='.fnameescape(g:vimrc_home.'/tmp/')                 
    exec 'set undofile'                        
endif

" vundle管理插件
set rtp+=/vagrant/data/Vim_lover/.vim/bundle/Vundle.vim
"set rtp+= g:vimrc_home .'/.vim/bundle/Vundle.vim'
call vundle#begin('/vagrant/data/Vim_lover/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin '/vagrant/data/Vim_lover/.vim/colors/molokai.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Lokaltog/vim-powerline'                " 美化状态栏
Plugin 'nathanaelkane/vim-indent-guides'       " 可是化相同的代码缩进
Plugin 'php.vim'
"Plugin 'file:///vagrant/data/Vim_lover/.vim/bundle/YouCompleteMe'
call vundle#end()            " required

source /vagrant/data/Vim_lover/.vim/config/plugin.vim
source /vagrant/data/Vim_lover/.vim/config/keyboard.vim
source /vagrant/data/Vim_lover/.vim/config/func.vim

    "au BufWritePost * call system("ctags -R")  " 保存文件后自动生成tag
    au BufWritePost $MYVIMRC source $MYVIMRC "vimrc保存自动生效，重启vim
    au FileType php call AddPHPFuncList() 
