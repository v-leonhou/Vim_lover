" 定义php语法函数
function! AddPHPFuncList()
    set dict-= g:vimrc_home."/php_funclist.txt" dict+=g:vimrc_home."/php_funclist.txt'"
    set complete-=k complete+=k
endfunction
