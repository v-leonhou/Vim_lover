" 环境设置
if has('gui_running') && has('gui_win32')
    " 配置文件变量
    let g:my_vimrc = $HOME.'\vimfiles\vimrc'
    let g:my_vimrc_home = $HOME.'\vimfiles'

    set guifont = Bitstream_Vera_Sans_Mono:h11:cANSI " 英文字体
    set guifontwide = simhei:h11:cGB2312 " 英文字体
elseif has('unix')
    let g:my_vimrc = $HOME.'/Vim_lover/vimrc'
    let g:my_vimrc_home = $HOME.'/Vim_lover'
endif

source $HOME/Vim_lover/vimrc
