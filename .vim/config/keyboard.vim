"定义快捷键的前缀键
let mapleader=";"

" ctr键前缀
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-d> :shel<CR>

" 显示/隐藏 MiNiBufExplorer窗口
map <Leader>f :MBEToggle<cr>
map <leader>a :MBEbn<cr>
" buffer 切换快捷键
map <leader>d :MBEbp<cr>


" 注释快捷键
 "<leader>cc 注释选中文本
 "<Leader>cu 取消选中注释

" 保存当前工作环境，撤销配置，在vim新版, 才有用
nnoremap <leader>sc :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>   " 保存快捷键
nnoremap <leader>sr :source my.vim<cr> :rviminfo my.viminfo<cr>        " 恢复快捷键 恢复环境
nnoremap <leader>sv :source $MYVIMRC<cr>
" 替换快捷键
function! Replace(confirm,wholeword,replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'),'/\.*$^~{') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' .replace . '/' . flag . ' | update'
endfunction

nnoremap <Leader>R :call Replace(0,0,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rw :call Replace(0,1,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rc :call Replace(1,0,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rcw :call Replace(1,1,input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1,1,input('Replace '.expand('<cword>').' with: '))<CR>

nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>

"定义php语法函数
function! AddPHPFuncList()
    set dict-= "g:vimrc_home.'/php_funclist.txt" dict+="g:vimrc_home.'/php_funclist.txt'"
    set complete-=k complete+=k
endfunction


nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" 定义退出vim快捷键
"nnoremap <C-d> :shel <CR>

nnoremap <leader>tag :!ctags -R<CR>
nnoremap <leader>tt :source g:vimrc_home.'/test/test.vim'<CR>
