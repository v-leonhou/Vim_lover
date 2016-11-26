let mapleader=";"                                           " 定义快捷键的前缀键

" ctr键前缀
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-d> :shel<CR>                                         " 定义退出vim快捷键

" 显示/隐藏 MiNiBufExplorer窗口
nnoremap <Leader>f :MBEToggle<cr>
nnoremap <leader>a :MBEbn<cr>
nnoremap <leader>d :MBEbp<cr>                                    " buffer 切换快捷键
nnoremap <leader>d :MBEbp<cr>                                    " buffer 切换快捷键
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l
noremap <C-TAB>   <C-W>w
noremap <C-S-TAB> <C-W>W

"nnoremap <leader>mm :%s///g<CR>
noremap  <leader>mm :%s/<C-V><cr>//ge<cr>'tzt'm  
nnoremap <leader>sc :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>   " 保存当前工作环境，撤销配置，在vim新版, 才有用
nnoremap <leader>sr :source my.vim<cr> :rviminfo my.viminfo<cr>        " 恢复快捷键 恢复环境
nnoremap <leader>sv :source $MYVIMRC<cr>

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

"map <F3> :TlistToggle<CR>      " taglist标签列表开关切换
map <F4> :TagbarToggle<CR>      " taglist标签列表开关切换

nnoremap <leader>tt :source g:vimrc_home.'/test/test.vim'<CR>






