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



