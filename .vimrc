set nocompatible
syntax on "语法高亮
set number "显示行号
""tab设置
set tabstop=4 "tab长度
set shiftwidth=4 "自动缩进长度
set smarttab "tab使用自动缩进长度
set expandtab "tab解释为空格
""自动缩进设置
filetype indent on
""当前行高亮设置
set cursorline "当前行高亮
"设置当前行的高亮方式：
highlight CursorLine cterm=NONE  
highlight CursorLineNr ctermfg=blue 

""vim-plug插件管理器设置
"自动安装vim-plug
if empty(glob( '~/.vim/autoload/plug.vim'))
	slient !curl -fLo ~/.vim/autoload/plug.vim --creat-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"插件列表
call plug#begin('~/.vim/plugged')
Plug 'haya14busa/incsearch.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
call plug#end()
""插件设置
let g:rainbow_active = 1 "开启彩虹括号
let g:airline_theme='light' "设置airline的颜色主题
let g:airline#extensions#tabline#enabled = 1 "开启顶部条

