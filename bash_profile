# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export PATH=/home/work/install/python2714/bin:$PATH

#================================ wangjian22 =================================
# alias
alias bp="vi ~/.bash_profile"
alias sbp="source ~/.bash_profile"

alias rd="cd /home/map/code/baidu/intelligent-map"
alias tm="cd /home/map/code/baidu/intelligent-map/daqian-task-master"
alias fm="cd /home/map/code/baidu/intelligent-map/daqian-flow-master"
alias tg="cd /home/map/code/baidu/intelligent-map/daqian-tile2grid"
alias log="cd /home/map/code/baidu/intelligent-map/daqian-quality-log-server"
alias km="cd /home/map/code/baidu/intelligent-map/kongming"
alias pcl="cd /home/map/code/baidu/personal-code/wangjian22_pcl"
alias emg="cd /home/map/code/baidu/intelligent-map/qiannuo-batch-emergency-lane"
alias pg="cd /home/map/code/baidu/intelligent-map/qianji-lidar-profile-generation"
alias box="cd /home/map/code/baidu/intelligent-map/qianji-boundingbox-correction"

alias wj="cd /home/map/code/baidu/personal-code/"
alias pt="cd /home/map/code/baidu/personal-code/Pluto"
alias nfs="cd /home/map/code/baidu/personal-code/wangjian_fs"

alias ip="echo map@10.64.50.127:"
alias tb="cd /home/map/tools/table/cli/bin"
alias mq="cd /home/map/tools/mysql_cli"
alias tl="cd /home/map/to_line"
alias cl="cd && cd -"
alias mock="cd /home/map/hadmap"

alias vi="vim"
alias ll="ls -l"

# mysql
alias mq_wanghao="mysql -h 10.95.127.145 -uroot -P8306 -D hdmap_pmp"
alias mq_online="mysql -h gzhxy-ns-map-had-plat-service101.gzhxy -uroot -P3336 -D hdmap_pmp"
alias mq_mirror="mysql -h gzhxy-ns-map-had-flow101.gzhxy -uroot -P8336 -D hdmap_pmp"
alias mq_test="mysql -h gzhxy-ns-map-had-rddev102.gzhxy -uroot -P3306 -D hdmap_pmp"
alias mq_storage="mysql -h gzhxy-ns-map-had-storage100.gzhxy -uroot -P3306 -D hadmap2 -phadmap"

alias fpwd='__fpwd(){ echo "ftp://`hostname`:`pwd`/$1";};__fpwd'
alias fscp='__fpwd(){ echo "scp map@`hostname`:`pwd`/$1";};__fpwd'
alias protoc='__pb(){ /home/map/tools/protobuf/bin/protoc -I=$1 --cpp_out=$1 $1/*.proto;};__pb'

# bcloud
alias bl='bcloud local'
alias bb='bcloud build'
alias bbu='bcloud build --update'

# command
export GREP_OPTIONS='--color=auto'


