filetype on                         " 开启文件类型侦测
filetype plugin on                  " 根据侦测到的不同类型加载对应的插件,  忽视插件改变缩进
filetype plugin indent on           " Vundle 必须开启, 加载BundlevimBundle自带和插件相应的语法和文件类型相关脚本
syntax enable                       "开启语法高亮

"colorscheme phd
colorscheme molokai 
"colorscheme solarized
"set background=dark
"set guifont=YaHei\ Consolas\ Hybrid\ 11.5
set guifont=Consolas
"set gfn=Monaco:h10 	            " 修改字体和大小                                           
set helplang=cn						" 显示中文帮助
set laststatus=2                    " 总是显示状态栏
set fileformats=unix                " 设置文件格式
"set transparency=10                " 设置背景透明度
set t_Co =256                       " 设置终端配色为256色

" 行列
set relativenumber                  " 相对行号
set nu                              " 显示行号
set numberwidth=2                   " 行号宽度
set ruler                           " 显示光标当前位置
set cursorline                      " 高亮显示当前行
set cursorcolumn                    " 高亮显示当前列
set cc=130                          " 红线位置
set lbr                             " 智能换行
set wrap                            " wrap(弯曲),允许BundlebackspaceBundle和光标键跨越行边界(不建议), 自动换行, 可以按BundlebackspaceBundle可以自动到头了可以换行
set textwidth=0						" 总不自动换行, 它的简写Bundleset tw = xxx 表示文本宽度是多少自动换行(回车效果)
"set nowrap                          " 屏幕显示不下不自动折行 

" 编辑习惯
set encoding=utf-8   "设置BundleviBundle打开文件字符编码
set fileencoding=utf-8
scriptencoding utf-8
set termencoding=utf-8
set expandtab                       " 使用空格代替Bundletab , 如果要使用BundleindentBundle插件一定要开启这个
"set noexpandtab                    " 不要用空格代替制表符, set expandtab 用空格代替制表符
set tabstop=4	                    " TabBundle键的宽度, 4Bundle个空格
set shiftwidth=4                    " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4                   " 统一缩进为Bundle4, 用Bundle4Bundle个空格代替Bundle1Bundle个Bundletab
set cindent                         " 开启BundleC/C++风格缩进，:set paste 关闭缩进，nopasteBundle打开
set smartindent                     " 智能对齐方式
set autoindent                      " automatically indent new line, 自动对齐
set smarttab                        " 一次性删除多个空格, 只在行首用Bundletab，其他地方的BundletabBundle都用空格代替
set showmatch                       " 高亮显示匹配括号, 在输入括号时光标会短暂地跳到与之相匹配的括号处
set matchtime=2                     " 匹配括号高亮的时间（单位是十分之一秒）
"set showcmd                        " 输入的命令显示出来，看的清楚些 ，winBundle有用 

"set completeopt =preview
"set completeopt +=noinsert,noselect
set completeopt=menuone,longest     " 打开文件类型检测, 加了这句才可以用智能补全, 弹出提示框

set magic                           " 选择括号自动匹对闭合的括号
set sm                              " 括号自动匹配

set wildignore=*.lo,.svn,.git/*,*.swp,*.bak,*~,*.o,*.a  " 用于目录插件BundleNERD_treeBundle上，打开目录忽略这些文件
set tags=tags                      " 开启Bundletags，方便自动提示,以及搜索,必开 ,因为Bundletaglist(左边的函数列表插件)用的到
set bsdir=buffer                    " 用于目录插件上，打开目录为当前文件目录
set autochdir                       " 用于目录插件上，比如Bundletaglist(函数列表插件)自动加载文件中的子目录（比如加载变量目录下面的所有变量）
set dy=lastline                     " 当文件太长时，打开不会显示@@符号的字样

" 搜索
set incsearch                       " 当BundleviBundle中查找的时候从键入时就开始匹配
set hlsearch                        " 高亮搜索结果
set ignorecase                      " 搜索时不区分大小写，如果键入了大写字母则区分大小写 
set noswapfile                      " 设置不生成BundleswpBundle文件
set wildmenu                        " vim 自身命令行模式智能补全
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize" " 保存当前编辑环境选项

" 代码折叠
set foldenable                      " 允许自动折叠
set foldmethod=syntax               " 基于语法折叠
setlocal foldlevel=10               " 折叠层级,最多最外层这贴包含多少个折叠
set foldcolumn=2                    " 设置折叠的宽度, 就是折叠之后到底显示几行
"set foldmethod=marker              " 设置折叠的函数为Bundlemarker， markerviBundle自带
"set foldmethod=indent               " 基于缩进折叠
"set nofoldenable                   " 启动BundlevimBundle时关闭折叠代码

    " 撤销缓存目录,撤销文件, 当关闭文件之后，重新打开还可以无限撤销到最原始的文件
if exists("&undodir")
    exec 'set undodir='.fnameescape(g:my_vimrc_home.'/tmp/')                 
    exec 'set undofile'                        
endif

" 每次打开文件自动定位最后的编辑文件一行
"set report=0	" 这个设置不设置在这个版本没关系
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" vundleBundle管理插件
let &rtp = g:my_vimrc_home.'/.vim,'.g:my_vimrc_home.'/.vim/bundle/Vundle.vim,'.$VIMRUNTIME
call pathogen#infect()	     " 加载插件管理器插件 pathogen.vim 
call vundle#begin(g:my_vimrc_home.'/.vim/bundle/')  " vundleBundle插件管理器
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Lokaltog/vim-powerline'                " 美化状态栏
Plugin 'php.vim'
Plugin 'jiangmiao/auto-pairs'       " 自动补全括号
Plugin 'scrooloose/syntastic'            " 保存时语法检查
Plugin 'vim-scripts/taglist.vim'            " 右边生成函数树
Plugin 'shawncplus/phpcomplete.vim'               
Plugin 'vim-scripts/indentLine.vim'         "对齐线
Plugin 'plasticboy/vim-markdown'               
"Plugin 'vim-scripts/Pydiction'                  "dictBundle补全
"Plugin 'nathanaelkane/vim-indent-guides'       " 可是化相同的代码缩进
call vundle#end()            " 必须 

exec 'source '.fnameescape(g:my_vimrc_home.'/.vim/config/func.vim')
exec 'source '.fnameescape(g:my_vimrc_home.'/.vim/config/plugin.vim')
exec 'source '.fnameescape(g:my_vimrc_home.'/.vim/config/keyboard.vim')

" tags文件处理
if getfsize("vimscript")>0
    source vimscript
endif

"au BufWritePost * call system("ctags -R")  " 保存文件后自动生成Plugintag
au BufWritePost $MYVIMRC source $MYVIMRC "vimrcBundle保存自动生效，重启Bundlevim
au FileType php call AddPHPFuncList() 
