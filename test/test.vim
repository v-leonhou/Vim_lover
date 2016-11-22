
let g:vimrc_home = '/vagrant/data/Vim_lover'


" 定义php语法函数
"function! AddPHPFuncList()
    set dict-= "{g:vimrc_home}/.vim/php_funclist.txt" dict+="{g:vimrc_home}/.vim/php_funclist.txt"
    set complete-=k complete+=k
"endfunction

"echo type('/vagrant/data/vim/.vim/bundle/Vundle.vim')
"echo type(g:vimrc_home .'/.vim/bundle/Vundle.vim')
"let &rtp = g:vimrc_home .'/.vim/bundle/Vundle.vim',$VIMRUNTIME
"let &rtp = g:vimrc_home."/vagrant/data/vim/bundle/Vundle.vim,".$VIMRUNTIME
"echo type(&rtp)
"
"exec 'dict+='.fnameescape(g:vimrc_home.'/vag/')
 "exec 'set dict-= '.{g:vimrc_home}.'/.vim/php_funclist.txt'.' dict+='.{g:vimrc_home}.'/.vim/php_funclist.txt'

