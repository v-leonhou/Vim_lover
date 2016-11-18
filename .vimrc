filetype on                  " 开启文件类型侦测
filetype plugin on           " 根据侦测到的不同类型加载对应的插件

" 开启插件, 如果vim里面装了插件必须要开启此选项才可以用插件,
" 开启文件类型检测
filetype plugin indent on    " required

syntax enable                      "开启语法高亮
syntax on                          "允许用指定语法高亮配色方案替换默认方案
syntax sync fromstart

" VIM 显示配置
" 设置主题
set background=dark
let g:solarized_termcolors=16                      " powerline 插件状态栏风格
let g:Powerline_colorsscheme='solarized256'        " powerline 设置状态栏主题风格

" solarized 主题配色，需要安装vim-colors-solarized插件开启
"Solarized VIM color scheme
"colorscheme phd
"colorscheme solarized

set laststatus=2                    " 总是显示状态栏
set ruler                           " 显示光标当前位置
set cursorline                      " 高亮显示当前行
set cursorcolumn                    " 高亮显示当前列

set guifont=YaHei\ Consolas\ Hybrid\ 11.5
set nowrap                          " 没有wrap文件

"设置vi打开文件字符编码
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

"set completeopt -=preview

set nocompatible                    " be iMproved, required "不兼容vi模式
set relativenumber                  " 相对行号
set nu                              " 显示行号
set numberwidth=3                   " 行号宽度
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



if has("autocmd")
        "au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
        "au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
        "au BufWritePost * call system("ctags -R")   "设置插入模式光标为竖线
        autocmd BufWritePost $MYVIMRC source $MYVIMRC "vimrc保存自动生效，重启vim
        au FileType php call AddPHPFuncList() 
endif

"定义php语法函数
function! AddPHPFuncList()
    set dict-=~/.vim/php_funclist.txt dict+=~/.vim/php_funclist.txt
    set complete-=k complete+=k
endfunction

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'altercation/vim-colors-solarized'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Lokaltog/vim-powerline'                " 美化状态栏
Plugin 'nathanaelkane/vim-indent-guides'       " 可是化相同的代码缩进
Plugin 'php.vim'
Plugin 'SirVer/ultisnips'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'joonty/vdebug'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"定义快捷键的前缀键
let mapleader=";"

" 保存当前工作环境，撤销配置，在vim新版, 才有用
"set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
"map <leaders>a :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>   " 保存快捷键
"map <leaders>r :source my.vim<cr> :rviminfo my.viminfo<cr>        " 恢复快捷键 恢复环境
set undodir=~/tmp/                  " 撤销缓存目录
set undofile                        " 撤销文件, 当关闭文件之后，重新打开还可以无限撤销到最原始的文件

"设置NERDTree的快捷键ctr+n,NERDTree相关命令
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=16
let NERDTreeShowHidden=1            " 显示隐藏文件
let NERDTreeAutoDeleteBuffer=1      " 删除文件时自动删除buffer文件
let NERDTreeMinimalUI=0            " 子窗口不显示冗余帮助信息
let NERDTreeWinPos="left"           " 设置子窗口位置

" 显示/隐藏 MiNiBufExplorer窗口
map <Leader>f :MBEToggle<cr>
"buffer 切换快捷键
map <leader>a :MBEbn<cr>
map <leader>d :MBEbp<cr>

" IndentGuides 快捷键
"let g:indent_guides_enable_on_vim_startup=1         " 随 vim 自启动 
"let g:indent_guides_start_level=2                   " 从第二层开始可视化显示缩进
"let g:indent_guides_guide_size=2                                       " 色块宽度
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle    " 快捷键 i 开/关缩进可视化

" 注释快捷键
" <leader>cc 注释选中文本
" <Leader>cu 取消选中注释
" 快速查找

nnoremap <f1> :!ctags -R<CR>

" 替换快捷键
"function! Replace(confirm,wholeword,replace)
"    wa
"    let flag = ''
"    if a:confirm
"        let flag .= 'gec'
"    else
"        let flag .= 'ge'
"    endif
"    let search = ''
"    if a:wholeword
"        let search .= '\<' . escape(expand('<cword>'),'/\.*$^~{') . '\>'
"    else
"        let search .= expand('<cword>')
"    endif
"    let replace = escape(a:replace, '/\&~')
"    execute 'argdo %s/' . search . '/' .replace . '/' . flag . ' | update'
"endfunction
"
"nnoremap <Leader>R :call Replace(0,0,input('Replace '.expand('<cword>').' with: '))<CR>
"nnoremap <Leader>rw :call Replace(0,1,input('Replace '.expand('<cword>').' with: '))<CR>
"nnoremap <Leader>rc :call Replace(1,0,input('Replace '.expand('<cword>').' with: '))<CR>
"nnoremap <Leader>rcw :call Replace(1,1,input('Replace '.expand('<cword>').' with: '))<CR>
"nnoremap <Leader>rwc :call Replace(1,1,input('Replace '.expand('<cword>').' with: '))<CR>





