"定义快捷键的前缀键
let mapleader=";"

map <C-n> :NERDTreeToggle<CR>

" 显示/隐藏 MiNiBufExplorer窗口
map <Leader>f :MBEToggle<cr>
map <leader>a :MBEbn<cr>
" buffer 切换快捷键
map <leader>d :MBEbp<cr>


" 注释快捷键
 "<leader>cc 注释选中文本
 "<Leader>cu 取消选中注释

" 保存当前工作环境，撤销配置，在vim新版, 才有用
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
map <leaders>c :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>   " 保存快捷键
map <leaders>r :source my.vim<cr> :rviminfo my.viminfo<cr>        " 恢复快捷键 恢复环境

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


"定义php语法函数
function! AddPHPFuncList()
    set dict-= "g:vimrc_home.'/php_funclist.txt" dict+="g:vimrc_home.'/php_funclist.txt'"
    set complete-=k complete+=k
endfunction






nnoremap <leader>tag :!ctags -R<CR>
nnoremap <leader>tt :source g:vimrc_home.'/test/test.vim'<CR>
