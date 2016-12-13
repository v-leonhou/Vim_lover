let mapleader=";"                                           " 定义快捷键的前缀键

" ctr键前缀
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-d> :shel<CR>                                         " 定义退出vim快捷键

" 显示/隐藏 MiNiBufExplorer窗口
nnoremap <Leader>f :MBEToggle<cr>
nnoremap <leader>a :MBEbn<cr>
nnoremap <leader>d :MBEbp<cr>                                    " buffer 切换快捷键
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l
noremap <C-TAB>   <C-W>w
noremap <C-S-TAB> <C-W>W



" map php-doc key inoremap:插入模式 nnoremap:命令行模式 vnoremap:视图模式
"inoremap <C-M> <ESC> :call PhpDocSingle()<CR>i
"nnoremap <C-M> :call PhpDocSingle()<CR>
"vnoremap <C-M> :call PhpDocSingle()<CR>

"nnoremap <leader>mm :%s///g<CR>
noremap  <leader>mm :%s/<C-V><cr>//ge<cr>'tzt'm  
nnoremap <leader>sc :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>   " 保存当前工作环境，撤销配置，在vim新版, 才有用
nnoremap <leader>sr :source my.vim<cr> :rviminfo my.viminfo<cr>        " 恢复快捷键 恢复环境
nnoremap <leader>sv :source $MYVIMRC<cr>

" Replace 参数一表示是否确认 参数二是否全局
nnoremap <Leader>R :call Replace(0,0,input('Replace '.expand('<cword>').' with: '))<CR>           
nnoremap <Leader>rw :call Replace(0,1,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rc :call Replace(1,0,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rcw :call Replace(1,1,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1,1,input('Replace '.expand('<cword>').' with: '))<CR>

nnoremap <leader>nl :nohl<cr>     " 取消高亮显示
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>tag :!ctags -R<CR>

 "<leader>cc 注释选中文本
 "<Leader>cu 取消选中注释

"nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" tagbar快捷键
map <F4> :TagbarToggle<CR>      " taglist标签列表开关切换
"<1>     把光标移到变量名或函数名上，然后按下"Ctrl-]"
"Ctrl-o"或“Ctrl-t”退回原来的地方。 
"Ctrl-i 返回下一个操作位置
"<2>     在函数中移动光标
"[{     转到上一个位于第一列的"{"
"}]     转到下一个位于第一列的"{"
"{      转到上一个空行
"}      转到下一个空行 （[ and  ] 也分别是两个指令）
"gd   转到当前光标所指的局部变量的定义 大写D跳转到全局变量
"*      转到当前光标所指的单词下一次出现的地方
"#     转到当前光标所指的单词上一次出现的地方k

" 自动折叠
" zc[C]关闭折叠 
" zo[O]打开折叠
" za互相切换
" zM折叠所有
" "zR取消所有折叠
