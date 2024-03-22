" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction


colo desert
set autoindent

" 解决中文乱码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 设置字体大小
set guifont=Courier_new:h12

" 语法高亮度显示
syntax on

" 显示标尺
set ru

" 显示输入命令行
set showcmd

" 显示状态在倒数第二行
set laststatus=2

" 检测文件类型
filetype on

" 历史记录数  
set history=1000

"行内替换  
set gdefault

" 用空格键来开关折叠
set foldenable
set foldmethod=indent
nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

" 显示行号
set nu

" 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

" 设置游标
set cursorline

" 找要匹配的单词。eg：如果要查找search单词，当输入到/s（回车确认选择）时，会自动找到第一个s开头的单词 
set incsearch

" 不创建交换文件 .swp文件
set noswapfile

" 不创建 .~文件
" set noundofile
" 将.~文件存放在根目录，即_vimrc所在目录下创建一个文件夹，如backup中
set backupdir=$Vim\backup

" 保留 撤销 操作历史
" set undofile

" 设置操作历史文件的保存位置
set undodir=$Vim\undodir

" vim需要记住多少次历史操作
set history=1000

" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full



