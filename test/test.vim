let my = 'hh'
echo g:my."/test/a.vim"
"set rtp += fnameescape(g:my .'/houlu')
"echo fnameescape(g:my .'/houlu')

"source '/vagrant/data/Vim_lover/test/a.vim'

" 环境设置
if has('gui_running') && has('gui_win32')
    " 配置文件变量
    let g:my_vimrc = $HOME.'\vimfiles\vimrc'
    let g:vimrc_home = $HOME.'\vimfiles'

    set guifont = Bitstream_Vera_Sans_Mono:h11:cANSI " 英文字体
    set guifontwide = simhei:h11:cGB2312 " 英文字体
elseif has('unix')
    let g:my_vimrc = '/vagrant/data/Vim_lover/vimrc'
    let g:vimrc_home = '/vagrant/data/Vim_lover'
endif
let jj = ''
let kk = g:my_vimrc.'/.vim/sss'
let mm = g:vimrc_home .'/.vim/bundle/Vundle.vim'
let kg = g:vimrc_home .'/.vim/bundle/Vundle.vim'
jj += g:kg
echo kk
echo mm
echo kg
echo jj 
