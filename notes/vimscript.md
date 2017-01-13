vimscript 

 字符串不能使用+连接，+只用于数字，当用+连接字符串时，会强制将字符串转为开头的数字再相加。正确的连接符号为.

 布尔设置开关

 所有布尔设置都是通过:set <name>来开启，通过:set no<name>来关闭

 也可以用toggle来设置自动开或关，:set <name>!

 检查某个布尔设置的开关情况可以使用 :set <name>?，比如查看是否显示行号用:set number?，如果是显示行号则显示number，不显示行号显示为nonumber

 特别笔记下:set shiftround命令，其作用是在你按>或<或者是在插入模式下按C-T或C-D时的缩进取整对齐， 比如我设置了:set shiftwidth=4，然后有如下缩进不规则的文本：

     :::text
