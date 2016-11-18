# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias ww='cd /home/www/cerall/'
alias hl='cd ~'
alias fx='./vendor/bin/phplint ./ --exclude=vendor'


alias pv='goaccess -f /usr/local/nginx/logs/access.log'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
