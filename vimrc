"basic config 

"------------------------------------------通用功能配置-------------------------------------------

"编码方式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,ucs-bom,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1,default

"关闭 vi 兼容模式"
set nocompatible
"set nocompatible

" mac等系统delete不能删除特殊字符，在这里设置为增强型
set nocompatible
set backspace=2

"背景色
"set background=dark

"显示行号
set nu
"vim命令历史保留
set history=1000

"用空格代替制表符
set expandtab
"自动缩进
set autoindent
"tab缩进长度
set ts=4
"退格tab时删除空格长度
set sts=4
"开启新行时使用智能自动缩进
set smartindent

"插入括号时，短暂地跳转到匹配的对应括号
set showmatch
"短暂跳转到匹配括号的时间

set matchtime=2
"输入搜索内容时就显示搜索结果
set incsearch
"搜索时高亮显示被找到的文本
set hls
"搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase

"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l   

"隐藏工具栏
set guioptions-=T
"隐藏菜单栏
set guioptions-=m

"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"置空错误铃声的终端代码
set vb t_vb=
"关闭错误信息响铃
"set noerrorbells

"不备份临时文件
set nobackup
set nowritebackup
set noswapfile

"vi的模式:普通模式n,命令模式c,插入模式i,可视模式v(邮件粘贴),所有模式a
set mouse-=a

"自动语法高亮
syntax on

"光标行高亮
"set cursorline
"set cursorcolumn
"highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=NONE guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

"文件关闭后终端仍保留展示
set t_ti= t_te=

"设置VIM状态栏 
set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏) 
set statusline= 
set statusline+=%f\ " file name 
set statusline+=[ 
if v:version >= 600 
	set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype 
	set statusline+=%{&fileencoding}, " encoding 
endif 
set statusline+=%{&fileformat}] " file format 
set statusline+=%= " right align 
"set statusline+=%2*0x%-8B\ " current char 
set statusline+=0x%-8B\ " current char 
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset 
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim")) 
	set statusline+=\ %{VimBuddy()} " vim buddy 
endif 
"状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White

"设定命令行的行数
set cmdheight=1 


"----------------------------------------文件头-----------------------------------------------
"新建.c,.h,.sh,.py文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py exec ":call SetTitle()" 

""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: wangjian") 
        call append(line(".")+2, "\# mail: dahuixiongwj@126.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "") 
        call append(line(".")+6, "\#!/bin/bash") 
        call append(line(".")+7, "") 
    elseif &filetype == 'python'
		call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: wangjian") 
        call append(line(".")+2, "\# mail: dahuixiongwj@126.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "")
        call append(line(".")+6, "\#!/usr/bin/python") 
        call append(line(".")+7, "\#!coding=utf8") 
        call append(line(".")+8, "")
	elseif &filetype == 'cpp' 
        call setline(1, "\/*************************************************************************") 
        call append(line("."), "File Name: ".expand("%")) 
        call append(line(".")+1, "Author: wangjian") 
        call append(line(".")+2, "Mail: dahuixiongwj@126.com ") 
        call append(line(".")+3, "Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "************************************************************************/") 
        call append(line(".")+5, "")
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "#include <iostream>")
        call append(line(".")+8, "using namespace std;")
        call append(line(".")+9, "")
    elseif &filetype == 'c'
        call setline(1, "\/*************************************************************************") 
        call append(line("."), "File Name: ".expand("%")) 
        call append(line(".")+1, "Author: wangjian") 
        call append(line(".")+2, "Mail: dahuixiongwj@126.com ") 
        call append(line(".")+3, "Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "************************************************************************/") 
        call append(line(".")+5, "")
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "")
    endif


endfunc 

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G


"vim插件管理工具vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

"设置目录树的快捷开关键为F5
nmap <F5> :NERDTreeToggle<cr>

"支持代码自动补全
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-a>'

"关闭youcompleteme中的语法检查问题提示
"let g:ycm_enable_diagnostic_signs = 0
"关闭youcompleteme中的语法检查问题高亮
"let g:ycm_enable_diagnostic_highlighting = 0

"syntaxstatic开启语法检查快捷键
"map <F2> :SyntasticToggleMode<CR>

"设置自动跳转的快捷键
nmap <F6> :YcmCompleter GoToDeclaration<CR>
nmap <F7> :YcmCompleter GoToDefinition<CR>
nmap <F8> :YcmCompleter GoToDefinitionElseDeclaration<CR>

"设置主题
"colorscheme NeoSolarized
"colorscheme solarized
"colorscheme molokai

"设置ctag代码跳转或补全
"ctags -R --c++-kinds=+px --fields=+iaS --extra=+q
set tags=./tags,tags;$HOME
set autochdir
