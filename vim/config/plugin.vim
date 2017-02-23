
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree 左侧目录树
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd VimEnter * NERDTree "启动Vim时自动打开nerdtree
let g:NERDTreeWinPos          = "right"
let NERDTreeShowHidden=1            " 显示隐藏文件
let NERDTreeAutoDeleteBuffer=1      " 删除文件时自动删除buffer文件
let g:NERDTreeWinSize         = 15 
let g:NERDTreeShowLineNumbers = 1
let NERDTreeMouseMode       = 1
let NERDChristmasTree       = 1
let NERDTreeRespectWildIgnore = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer=1      " 重名名文件后自动删除打开的buffer
let NERDTreeRespectWildIgnore=1
"let NERDTreeQuitOnOpen     = 1
"let NERDTreeChDirMode        = 2   "打开书签时，自动将Vim的pwd设为打开的目录，如果你的项目有tags文件，你会发现这个命令很有帮助

" plugin tagbar 
map <F4> :TagbarToggle<CR>      " taglist标签列表开关切换
autocmd FileType c,cpp,php,javascript,js nested :TagbarOpen
"autocmd FileType .php nested :call tagbar#autoopen(0)
"autocmd VimEnter * nested :TagbarOpen
let g:tagbar_width = 20
let g:tagbar_show_linenumbers = 2
"let g:tagbar_iconchars = ['+','_']  "(default on Linux and Mac OS X)
let g:tagbar_left=1
let g:tagbar_autoshowtag = 1
let g:tagbar_autofocus = 1
"let g:tagbar_previewwin_pos = "splitbelow"
"let g:tagbar_autopreview = 1
"let g:tagbar_autoclose = 1

" minibuffer插件
"let g:miniBufExplBRSplit = 1        " 创建新的buffer时从下方或者右边创建 
let g:miniBufExplAutoStart=1        " 自动打开buffer
let g:miniBufExplBuffersNeeded = 0  " 默认需要两个buffer时才会打开MBE，开启此选项后会跳过个数检查
let g:miniBufExplCycleArround = 1   " buffer循环
hi MBENormal               guifg=#808080 guibg=fg
hi MBESelecting            guifg=#BEEF13 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
let g:did_minibufexplorer_syntax_inits = 1
"hi link  MBEVisibleActiveChanged Error
"hi MBEVisibleActiveChanged guibg=red ctermbg=3 "termbg=4
"hi MBEChanged guibg=darkblue ctermbg=darkblue termbg=white


" vim-powerline 插件快捷键
"let g:solarized_termcolors=16       " powerline 插件状态栏风格
"let g:Powerline_colorsscheme='molokai'        " powerline 设置状态栏主题风格

" molokai 主题
let g:molokai_original = 1
"let g:rehash256 = 1 " 256色风格

"" 跳过tpl，html 文件的语法检查，插件syntastic的配置
let g:syntastic_ignore_files=['.*\.tpl$', '.*\.html$']

"" 4.snipMate变量定义
let g:snips_author  = "leonhou <764436364@qq.com>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => autocmd 自动加载
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au FileType php setlocal dict+=~/.vim/swoole_funclist.dict
exec 'au FileType c setlocal dict+='.g:my_vimrc_home.'/.vim/dict/c.dict'
"" 太卡了，里面都不知道是什么函数来的
""au FileType go setlocal dict+=~/.vim/dict/go.dict
"" 让html和smarty模板能调用字典
exec 'au FileType html,htm,smarty setlocal dict+='.g:my_vimrc_home.'/.vim/dict/css.dict'
exec 'au FileType html,htm,smarty setlocal dict+='.g:my_vimrc_home.'/.vim/dict/javascript.dict'
au FileType html,htm,smarty let g:javascript_enable_domhtmlcss = 1
"au Filetype java setlocal omnifunc=javacomplete#Complete
"" vim无法认出json，遇到json后缀的，告诉一下vim这个是json
au BufRead,BufNewFile *.json set filetype=json

"" 新建文件模板, 创建一个skeletons目录
exec 'autocmd BufNewFile *.php 0r '.g:my_vimrc_home.'/.vim/skeletons/php.skel'
exec 'autocmd BufNewFile *.json 0r '.g:my_vimrc_home.'/.vim/skeletons/json.skel'
"autocmd BufNewFile *.go 0r ~/.vim/skeletons/go.skel
"autocmd BufNewFile *.html 0r ~/.vim/skeletons/tpl.skel
"autocmd BufNewFile *.tpl 0r ~/.vim/skeletons/tpl.skel
"autocmd BufNewFile *.java 0r ~/.vim/skeletons/java.skel

"解决没有主题时highlight group not found: Normal报错问题
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd guibg=red ctermbg=3
"hi IndentGuidesEven guibg=red ctermbg=4

"" IndentGuides 快捷键
"let g:indent_guides_enable_on_vim_startup=1         " 随 vim 自启动 
"let g:indent_guides_start_level=2                   " 从第二层开始可视化显示缩进
"let g:indent_guides_guide_size=2                                       " 色块宽度
":nnoremap <silent> <Leader>i <Plug>IndentGuidesToggle    " 快捷键 i 开/关缩进可视化

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" 生成文件列表 cscope.files
" find dir -name "*.php" -o -name "*.inc" > cscope.files
" 通过 cscope.files 生成函数列表
" cscope -Rbq
" 通过 ctrl+] 跳转到目标函数，通过 ctrl+o 或者 ctrl+t 跳回
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("cscope")
       "set csprg=cscope " /opt/local/bin/cscope
       "set csto=1
       "set cst
       "set nocsverb
       "" add any database in current directory
       "if filereadable("cscope.out")
           "cs add cscope.out
       "endif
       "set csverb
"endif

"" => markdown配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""markdown配置
"au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
"au BufRead,BufNewFile *.{php}   set filetype=php
"au BufRead,BufNewFile *.{go}   set filetype=go
"au BufRead,BufNewFile *.{js}   set filetype=javascript
""rkdown to HTML  
"nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
"nmap fi :!open %.html & <CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => indentLine 对齐线插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:indentLine_color_term = 239
"let g:indentLine_color_gui  = '#3F4039'
"" 如果要保证此插件能够使用必须在vimrc中添加set expandtab
"let g:indentLine_char       = '┆'  " 也可以不配置，indentLine.vim插件文件中有默认的
 
"" 3.mru, 打开最近编辑过的文件
"" 定义一个用逗号来表示<Learder>
"let mapleader = "," 
"let maplocalleader = "\\"
"let MRU_Window_Height = 10


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => taglist 右侧的函数列表树
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" set tags=./tags,./../tags,./**/tags,~/.vim/tags
"" 在 .vimrc 里面已经配置了
"" set tags=tags;
"" set autochdir

"let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
"let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 0
"let Tlist_Auto_Update = 1
"let Tlist_Close_On_Select = 0
"let Tlist_Compact_Format = 0
"let Tlist_Display_Prototype = 0
"let Tlist_Display_Tag_Scope = 1
"let Tlist_Enable_Fold_Column = 0
"let Tlist_Exit_OnlyWindow = 1 " 当taglist是最后一个分割窗口时，自动退出vim
"let Tlist_File_Fold_Auto_Close = 1 " 非当前文件，函数列表折叠隐藏
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Hightlight_Tag_On_BufEnter = 1
"let Tlist_Inc_Winwidth = 0
"let Tlist_Max_Submenu_Items = 1
"let Tlist_Max_Tag_Length = 30
"let Tlist_Process_File_Always = 0 " 不是一直更新tags，因为没有必要
"let Tlist_Show_Menu = 1 
"let Tlist_Show_One_File = 1 " 让taglist 可以同时展示多个文件的函数列表，如果想只有1个，设置为1
"let Tlist_Sort_Type = "order"
"let Tlist_Use_Horiz_Window = 0
"let Tlist_Use_Right_Window = 1 " 改成右边显示
"let Tlist_WinWidth = 30
"let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => tabular 文本对齐
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 比如
"" $a = 100;
"" $b   = 100; 
"" 你可以选择根据=号对齐, 用法: Tab/=, 也可以选择根据别的方式对齐

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => zencoding 代码块，后面改名为 emmet
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:user_emmet_expandabbr_key = '<c-e>'
"let g:use_emmet_complete_tag = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => neocomplacache 代码补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" 关闭AutoComplPop，会和neocomplcache有冲突
"let g:acp_enableAtStartup = 0
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_disable_auto_complete = 0 " 设置NeoComplCache自动弹出补全列表
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1 " 支持智能匹配
"let g:neocomplcache_enable_camel_case_completion = 1 " 支持驼峰格式匹配关键词
"let g:neocomplcache_enable_underbar_completion = 1 " 支持下划线分割的关键词
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_manual_completion_start_length = 3
"let g:neocomplcache_enable_ignore_case = 1 " 支持忽略匹配
"let g:neocomplcache_lock_buffer_name_pattern = '/*ku/*'
"let g:neocomplcache_max_list = 20 " 下拉列表个数
"let g:neocomplcache_enable_auto_select = 1 "支持在下拉框自动选择第一个
"" let g:neocomplcache_enable_auto_delimiter = 1 " 分隔符
"" let g:neocomplcache_enable_wildcard = 1 " 通配符
"" let g:neocomplcache_enable_caching_message=1 "显示启动进度


"""YouCompleteMe智能补全工具
""let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
""" 不显示开启vim时检查ycm_extra_conf文件的信息
""let g:ycm_confirm_extra_conf = 0
""" 开启基于tag的补全，可以在这之后添加需要的标签路径
""let g:ycm_collect_identifiers_from_tags_files = 1
""" 开启语义补全
""let g:ycm_seed_identifiers_with_syntax = 1
"""注释和字符串中的文字也会被收入补全
""let g:ycm_collect_identifiers_from_comments_and_strings = 0
""" 输入第 2 个字符开始补全
""let g:ycm_min_num_of_chars_for_completion= 2
""" 禁止缓存匹配项,每次都重新生成匹配项
""let g:ycm_cache_omnifunc=0
"""在注释输入中也能补全
""let g:ycm_complete_in_comments = 1
"""在字符串输入中也能补全
""let g:ycm_complete_in_strings = 1
"""定义快捷健补全
""let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
""let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
""" 设置在下面几种格式的文件上屏蔽ycm
""let g:ycm_filetype_blacklist = {
""      \ 'tagbar' : 1,
""      \ 'qf' : 1,
""      \ 'notes' : 1,
""      \ 'markdown' : 1,
""      \ 'unite' : 1,
""      \ 'text' : 1,
""      \ 'vimwiki' : 1,
""      \ 'pandoc' : 1,
""      \ 'infolog' : 1,
""      \ 'mail' : 1
""      \}
"""设置关健字触发补全
""let g:ycm_semantic_triggers =  {
""  \   'c' : ['->', '.', ' ', '(', '[', '&'],
""  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
""  \             're!\[.*\]\s'],
""  \   'ocaml' : ['.', '#'],
""  \   'cpp,objcpp' : ['->', '.', '::'],
""  \   'perl' : ['->'],
""  \   'php' : ['->', '::'],
""  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
""  \   'ruby' : ['.', '::'],
""  \   'lua' : ['.', ':'],
""  \   'erlang' : [':'],
""  \ }
""let g:ycm_cache_omnifunc = 1
""let g:ycm_use_ultisnips_completer = 1
"""定义函数跟踪快捷健
""nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
