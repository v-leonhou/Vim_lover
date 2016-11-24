" 定义php语法函数
function! AddPHPFuncList()
    set dict-=/var/www/Vim_lover/.vim/php_funclist.txt dict+=/var/www/Vim_lover/.vim/php_funclist.txt
    "set dict-= '{g:vimrc_home}/.vim/php_funclist.txt' dict+='{g:vimrc_home}/.vim/php_funclist.txt'
    set complete-=k complete+=k
endfunction

" 快速替换
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

