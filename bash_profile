# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#------------------------------- command --------------------------------
export GREP_OPTIONS='--color=auto'
git config --global color.ui auto

#------------------------------- env var --------------------------------
ulimit -c unlimited

# executable path for bin PATH
export PATH=/usr/bin:$PATH

# gcc include for c C_INCLUDE_PATH

# gcc include for c++ CPLUS_INCLUDE_PATH

# gcc link dir for .so LD_LIBRARY_PATH

# gcc link dir for .a LIBRARY_PATH

#-------------------------------- alias ---------------------------------
# common alias
alias vi="vim"
alias ll="ls -l"
alias cl='cd && cd - && clear'
alias rm='rm -f'
alias grep='grep --color'
alias ctags='ctags --c++-kinds=+px --fields=+iaS --extra=+q'
alias bp='vi ~/.bash_profile'
alias sbp='source ~/.bash_profile'

alias fpwd='__fpwd(){ echo "ftp://`hostname`:`pwd`/$1";};__fpwd'
alias fscp='__fpwd(){ echo "scp $USER@`hostname`:`pwd`/$1";};__fpwd'
alias pbcpp='__pb(){ /home/work/common_util/bin/protoc --proto_path=./ --cpp_out=./ $1;};__pb'
alias pbpy='__pb(){ /home/work/common_util/bin/protoc --proto_path=./ --python_out=./ $1;};__pb'

#-------------------------------- tools ---------------------------------
#调整git单文件支持较大文件上传
git config --global sendpack.sideband false
#调整git单文件上传限制为500M
git config --global http.postBuffer 524288000


