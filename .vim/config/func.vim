" 定义php语法函数
function! AddPHPFuncList()
    set dict-=/vagrant/data/Vim_lover/.vim/php_funclist.txt dict+=/vagrant/data/Vim_lover/.vim/php_funclist.txt
    "set dict-= '{g:vimrc_home}/.vim/php_funclist.txt' dict+='{g:vimrc_home}/.vim/php_funclist.txt'
    set complete-=k complete+=k
endfunction
