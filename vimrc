" Vundle vim插件管理
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Bundle 'jistr/vim-nerdtree-tabs'

Plugin 'Yggdroot/indentLine'

Bundle 'tomasr/molokai'

Bundle 'tpope/vim-endwise'

Plugin 'mattn/emmet-vim'

Plugin 'ctrlpvim/ctrlp.vim'

Bundle 'majutsushi/tagbar'

Plugin 'posva/vim-vue'

Plugin 'tpope/vim-rails'

Plugin 'derekwyatt/vim-scala'

Plugin 'pangloss/vim-javascript'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'

Plugin 'rizzatti/dash.vim'

Plugin 'vim-bundler'
Plugin 'vim-indent-guides'
Plugin 'vim-javascript-syntax'

Plugin 'elixir-lang/vim-elixir'

Plugin 'wakatime/vim-wakatime'

Plugin 'keith/swift.vim'


Plugin 'git@github.com:tweekmonster/django-plus.vim.git'

Plugin 'fatih/vim-go'

Plugin 'kchmck/vim-coffee-script'

let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

Plugin  'vim-scripts/tComment'

Plugin 'tpope/vim-fugitive'

Plugin 'git://git.wincent.com/command-t.git'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"" ......................常规设置 begin.........................
" 语法高亮
syntax on

" Switch syntax highlighting on, when the terminal has colors
if (has("gui_running")) && !exists("syntax_on")
  syntax on
  set transparency=3
endif

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby


" 主题
colorscheme solarized
" colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0
let g:molokai_original = 1
let g:rehash256 = 1

" Backspace deletes like most programs in insert mode
set backspace=2


" Display incomplete commands
set showcmd

" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Make it obvious where 80 characters is
set textwidth=200
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

set matchpairs+=<:>

" 设置字体
" set guifont=Monaco:h16
set guifont=Inconsolata-g:h16


" 用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" 智能对齐
set smartindent

" 自动对齐
set autoindent

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" Tab键的宽度
set tabstop=2
" 统一缩进为2

" 用空格代替制表符
set expandtab

"设置Tab键跟行尾符显示出来  
set list lcs=tab:>-,trail:-  


" 历史记录数
set history=1000

"在Vim窗口右下角显示未完成的命令   
set showcmd

" 搜索逐字符高亮
set hlsearch
set incsearch

" 行内替换
set gdefault

" 编码设置
set encoding=utf-8

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 总是显示状态行
set laststatus=2

set showmode

" 在状态行显示目前所执行的命令，未完成的指令片段亦会显示出来
set showcmd

" 高亮显示对应的括号
set showmatch


" 对应括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在切换buffer时自动保存当前文件
set autowrite

" 字符间插入的像素行数目
set linespace=2

" 分为三部分命令：file on, file plugin on, file indent on.分别表示自动识别文件类型，用文件类型脚本，使用缩进定义文件。
filetype plugin indent on

set t_Co=256

" 折行
set wrap

" 背景选择
if has('gui_running')
    set background=dark
else
    set background=dark
endif

set cuc


"" ......................插件设置 begin.........................
" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>


" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

set laststatus=2 " Always display the status line
set statusline+=%{fugitive#statusline()} "  Git Hotness


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" NERD tree
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
let NERDTreeWinSize=28
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDChristmasTree=0
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>
map <C-X> :CtrlPMRU<CR>


" 允许折叠
set foldenable
" 标志折叠
set foldmethod=marker

