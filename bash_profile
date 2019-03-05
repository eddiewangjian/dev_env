# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

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
alias mq_tm_local="mysql -h 127.0.0.1 -uroot -P3306 -p123456 -D hadmap"
alias mq_tm_dev="mysql -h 10.64.16.180 -uroot -pMhxzKhl -P8306 -D hadmap"
alias mq_tm_test="mysql -h gzhl-inf-table2025.gzhl.baidu.com -uroot -pMhxzKhl -P8306 -D hadmap"

alias mq_wanghao="mysql -h 10.95.127.145 -uroot -P8306 -D hdmap_pmp"
alias mq_caozhiyi="mysql -h 10.95.127.145 -uroot -P8306 -D service"
alias mq_online="mysql -h gzhxy-ns-map-had-plat-service101.gzhxy -uroot -P3336 -D hdmap_pmp"
alias mq_mirror="mysql -h gzhxy-ns-map-had-flow101.gzhxy -uroot -P8336 -D hdmap_pmp"
alias mq_test="mysql -h gzhxy-ns-map-had-rddev102.gzhxy -uroot -P3306 -D hdmap_pmp"
alias mq_storage="mysql -h gzhxy-ns-map-had-storage100.gzhxy -uroot -P3306 -D hadmap2 -phadmap"

alias fpwd='__fpwd(){ echo "ftp://`hostname`:`pwd`/$1";};__fpwd'
alias fscp='__fpwd(){ echo "scp map@`hostname`:`pwd`/$1";};__fpwd'
alias protoc='__pb(){ /home/map/tools/protobuf/bin/protoc -I=$1 --cpp_out=$1 $1/*.proto;};__pb'

# zookeeper
alias zk_tm_local='/home/map/zookeeper/zookeeper-3.4.9/zookeeper/bin/zkCli.sh -server 10.186.119.38:2181'

# bcloud
alias bl='bcloud local'
alias bb='bcloud build'
alias bbu='bcloud build --update'

# command 
export GREP_OPTIONS='--color=auto'

#--------------------------------------------------------------------------------

# hadoop
HADOOP_DIR=/home/map/tools/hadoop/hadoop-client/hadoop

# User specific environment and startup programs
PATH=$PATH:$HOME/bin

# for traffic sign detect module
PATH=$PATH:/home/map/code/baidu/third-party/caffe-iv/3rdparty/protobuf260/bin
LD_LIBRARY_PATH=/home/map/code/baidu/third-party/caffe-iv/3rdparty/protobuf260/lib/linux:$LD_LIBRARY_PATH
export PATH

# for bcloud tools
PATH=/home/map/.BCloud/bin:$PATH
export PATH
LD_LIBRARY_PATH=/home/map/.BCloud/bin/python/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
export PATH=/home/map/.Comake2/comake:$PATH
PATH=/home/map/tools/build_submitter/usr/bin:$PATH
export PATH

# for nfs-server lib
LD_LIBRARY_PATH=/home/map/code/baidu/personal-code/wangjian_fs/output/so:$LD_LIBRARY_PATH

# for hadoop
PATH=$PATH:/home/map/tools/hadoop/hadoop-client/hadoop/bin

# for pcl lib
CPLUS_INCLUDE_PATH=/usr/include/pcl-1.6:$CPLUS_INCLUDE_PATH

alias b='bcloud'
