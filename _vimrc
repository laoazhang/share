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

" �����������
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" ���������С
set guifont=Courier_new:h12

" �﷨��������ʾ
syntax on

" ��ʾ���
set ru

" ��ʾ����������
set showcmd

" ��ʾ״̬�ڵ����ڶ���
set laststatus=2

" ����ļ�����
filetype on

" ��ʷ��¼��  
set history=1000

"�����滻  
set gdefault

" �ÿո���������۵�
set foldenable
set foldmethod=indent
nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

" ��ʾ�к�
set nu

" ����ƥ��ģʽ�����Ƶ�����һ��������ʱ��ƥ����Ӧ���Ǹ�������
set showmatch

" �����α�
set cursorline

" ��Ҫƥ��ĵ��ʡ�eg�����Ҫ����search���ʣ������뵽/s���س�ȷ��ѡ��ʱ�����Զ��ҵ���һ��s��ͷ�ĵ��� 
set incsearch

" �����������ļ� .swp�ļ�
set noswapfile

" ������ .~�ļ�
" set noundofile
" ��.~�ļ�����ڸ�Ŀ¼����_vimrc����Ŀ¼�´���һ���ļ��У���backup��
set backupdir=$Vim\backup

" ���� ���� ������ʷ
" set undofile

" ���ò�����ʷ�ļ��ı���λ��
set undodir=$Vim\undodir

" vim��Ҫ��ס���ٴ���ʷ����
set history=1000

" ����ģʽ�£��ײ�����ָ��� Tab ���Զ���ȫ����һ�ΰ��� Tab������ʾ����ƥ��Ĳ���ָ����嵥���ڶ��ΰ��� Tab��������ѡ�����ָ��
set wildmenu
set wildmode=longest:list,full



