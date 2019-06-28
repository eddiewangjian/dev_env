# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# command 
export GREP_OPTIONS='--color=auto'

#调整git单文件支持较大文件上传
git config --global sendpack.sideband false
#调整git单文件上传限制为500M
git config --global http.postBuffer 524288000

#================================ wangjian22 alias =================================
# common alias
alias vi="vim"
alias ll="ls -l"
alias bp="vi ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias cl="cd && cd -"
alias fpwd='__fpwd(){ echo "ftp://`hostname`:`pwd`/$1";};__fpwd'
alias fscp='__fpwd(){ echo "scp map@`hostname`:`pwd`/$1";};__fpwd'
alias protoc='__pb(){ /home/map/tools/protobuf/bin/protoc -I=$1 --cpp_out=$1 $1/*.proto;};__pb'

#-------------------------------- wangjian22 alias ---------------------------------
