" 定义php语法函数
function! AddPHPFuncList()
    let &dict= g:my_vimrc_home."/vim/php_funclist.txt" 
    set complete-=k complete+=k
endfunction
    
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

