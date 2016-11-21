

"设置NERDTree的快捷键ctr+n,NERDTree相关命令
let NERDTreeWinSize=16
let NERDTreeShowHidden=1            " 显示隐藏文件
let NERDTreeAutoDeleteBuffer=1      " 删除文件时自动删除buffer文件
let NERDTreeMinimalUI=0            " 子窗口不显示冗余帮助信息
let NERDTreeWinPos="left"           " 设置子窗口位置


"解决没有主题时highlight group not found: Normal报错问题
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=red ctermbg=4

" IndentGuides 快捷键
let g:indent_guides_enable_on_vim_startup=1         " 随 vim 自启动 
let g:indent_guides_start_level=2                   " 从第二层开始可视化显示缩进
let g:indent_guides_guide_size=2                                       " 色块宽度
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle    " 快捷键 i 开/关缩进可视化

" 快速查找

" vim-powerline 插件快捷键
let g:solarized_termcolors=16                      " powerline 插件状态栏风格
let g:Powerline_colorsscheme='solarized256'        " powerline 设置状态栏主题风格


" molokai 主题
"let g:molokai_original = 1
"let g:rehash256 = 1 " 256色风格

