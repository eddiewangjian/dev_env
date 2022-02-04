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
        call append(line(".")+1, "\# Author: eddie") 
        call append(line(".")+2, "\# mail: eddiewangjian@gmail.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "") 
        call append(line(".")+6, "\#!/bin/bash") 
        call append(line(".")+7, "") 
    elseif &filetype == 'python'
		call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: eddie") 
        call append(line(".")+2, "\# mail: eddiewangjian@gmail.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "")
        call append(line(".")+6, "\#!/usr/bin/python") 
        call append(line(".")+7, "\#!coding=utf8") 
        call append(line(".")+8, "")
	elseif &filetype == 'cpp' 
        call setline(1, "\/*************************************************************************") 
        call append(line("."), "File Name: ".expand("%")) 
        call append(line(".")+1, "Author: eddie") 
        call append(line(".")+2, "Mail: eddiewangjian@gmail.com ") 
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
        call append(line(".")+1, "Author: eddie") 
        call append(line(".")+2, "Mail: eddiewangjian@gmail.com ") 
        call append(line(".")+3, "Created Time: ".strftime("%Y-%m-%d %H:%M:%S")) 
        call append(line(".")+4, "************************************************************************/") 
        call append(line(".")+5, "")
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "")
    endif

endfunc 

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G

"-------------- vim插件管理工具vundle --------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

"------------------ 设置主题 --------------------
"colorscheme NeoSolarized
"colorscheme solarized
"colorscheme molokai
colorscheme desert

" ----------------- 左侧导航栏NERDTree -----------------
"在vim启动的时候默认开启NERDTree
"autocmd VimEnter * NERDTree
"设置目录树的快捷开关键为F5
nmap <F2> :NERDTreeToggle<cr>
"文件列表设置宽度
let g:NERDTreeWinSize=35
"当剩余的窗口都不是文件编辑窗口时，自动退出vim
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" ---------------- 代码只能补全OmniCppComplete ----------------
"设置ctag代码跳转或补全（使用ctags -R . 为当前目录和子目录设置tag）
"ctags -R --c++-kinds=+px --fields=+iaS --extra=+q
set tags=./tags,tags;HOME
set autochdir

"set nocp
"filetype plugin on
""通过F12生成tags
""map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ -I .<CR>
""map <C-F12> :!ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --fields=+S -R -f ~/.vim/systags /usr/include /usr/local/include .<CR>
"set completeopt=menu,menuone
"set omnifunc=syntaxcomplete#Complete
"let OmniCpp_GlobalScopeSearch = 1  " 0 or 1
"let OmniCpp_NamespaceSearch = 2   " 0 ,  1 or 2
"let OmniCpp_DefaultNamespace=["std"]
"let OmniCpp_DisplayMode = 1
"let OmniCpp_ShowScopeInAbbr = 0
""打开显示函数原型
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_ShowAccess = 1
""输入.后自动触发补全
"let OmniCpp_MayCompleteDot = 1
""输入->后自动触发补全
"let OmniCpp_MayCompleteArrow = 1
""输入::后自动触发补全
"let OmniCpp_MayCompleteScope = 1
""自动弹出时自动跳至第一个
"let OmniCpp_SelectFirstItem = 2
""tags路径
"set tags+=/home/work/wangjian/ai_brain_server_cpp/src/tags

"" ---------------- 代码补全YouCompleteMe ----------------
""支持YouCompleteMe代码自动补全
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
""let g:ycm_key_invoke_completion = '<C-a>'
""关闭youcompleteme中的语法检查问题提示
"let g:ycm_enable_diagnostic_signs = 0
""关闭youcompleteme中的语法检查问题高亮
"let g:ycm_enable_diagnostic_highlighting = 0
""设置自动跳转的快捷键
"nmap <F6> :YcmCompleter GoToDeclaration<CR>
"nmap <F7> :YcmCompleter GoToDefinition<CR>
"nmap <F8> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ------------- syntaxstatic开启语法检查 --------------
"map <<F4>> :SyntasticToggleMode<CR>
"let g:syntastic_check_on_open = 0
"let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_wq = 0

" ---------------- Taglist ---------------
"map <F3> :TlistToggle<CR>
"let Tlist_Sort_Type = "name"    " 按照名称排序
"let Tlist_Auto_Open=0           " 开启编辑文档后自动打开taglist
""let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_File_Fold_Auto_Close = 1
"let Tlist_Exit_OnlyWindow = 1   " 如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1  " 在右侧窗口中显示taglist窗口
"let Tlist_Compart_Format = 1    " 压缩方式
"let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
"let Tlist_Show_One_File=1       " 不同时显示多个文件的tag，只显示当前文件的
"let Tlist_WinWidth = 35
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:40'
"let g:NERDTreeChDirMode = 2
"let g:ctrlp_working_path_mode = 'rw'

" ---------------- tagbar ----------------
" 将开启tagbar的快捷键设置为F3
nmap <F3> :TagbarToggle<CR>
" 设置ctags所在路径
let g:tagbar_ctags_bin='/usr/bin/ctags'
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'
" 设置tagbar的宽度
let g:tagbar_width=30
" 在某些情况下自动打开tagbar
"autocmd BufReadPost *.java,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

"" --------------- javacomplete ----------------
"" javacomplete 自动补全功能
"" 設定此行在 java 檔案中，就可按(ctrl + x) + (ctrl + o) 自動補全
"setlocal omnifunc=javacomplete#Complete
"" 當檔案為副檔名為 java 動作
"" mode的狀態下,按"."會替換成以下指令，換言之，與ide相同當按"."會自動補全
"autocmd Filetype java,jsp set omnifunc=javacomplete#Complete
"autocmd Filetype java,jsp set completefunc=javacomplete#CompleteParamsInf
"inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
"inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
"autocmd Filetype java,javascript,jsp inoremap <buffer> . .<C-X><C-O><C-P>
"" 設定額外 include 的 classpath
""let b:classpath="/opt/apache-tomcat-8.0.30/lib/*"

" --------------- javacomplete2 ----------------
" javacomplete2 自动补全功能
" 設定此行在 java 檔案中，就可按(ctrl + x) + (ctrl + o) 自動補全
setlocal omnifunc=javacomplete#Complete
autocmd Filetype java,javascript,jsp inoremap <buffer> <Tab> <C-X><C-O><C-P>

"每行超过字符后提示
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%126v.*/


