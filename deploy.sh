timestamp=`date "+%Y%m%d%H%M%S"`
echo $timestamp

# -------- backup ---------
mv ~/.bash_profile ~/.bash_profile.bak${timestamp}
mv ~/.vimrc ~/.vimrc.bak${timestamp}
mv ~/.vimrc.bundles ~/.vimrc.bundles.bak${timestamp}
mv ~/.vim ~/.vim.bak${timestamp}

# -------- deploy ---------
cp bash_profile ~/.bash_profile
cp vimrc ~/.vimrc
cp vimrc.bundles ~/.vimrc.bundles
mkdir -p ~/.vim
cp -r bundle ~/.vim/
cp ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
