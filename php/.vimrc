"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
" NERDTreeを設定  
NeoBundle 'scrooloose/nerdtree'

" --------------------
" php 辞書設定
" --------------------
"set: dictionary= で辞書ファイルを指定
autocmd BufRead *.php\|*.ctp\|*.tpl :set
set dictionary=~/.vim/dict/php.dict filetype=php
"
NeoBundle 'Shougo/neocomplcache'
"
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
" --------------------
" php シンタックスチェック
" --------------------
NeoBundle 'scrooloose/syntastic'

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_highlighting = 1
" なんでか分からないけど php コマンドのオプションを上書かないと動かなかった
let g:syntastic_php_php_args = '-l'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
map <C-r> :Errors
"
 
call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

" NeoBundle
nnoremap <silent><C-e> :NERDTree<CR>
map <C-l> gt
map <C-h> gT


" set 
" 環境設定系
" " シンタックスハイライト
syntax on
" " エンコード
set encoding=utf8
" " ファイルエンコード
set fileencoding=utf-8
" " スクロールする時に下が見えるようにする
set scrolloff=5
" " .swapファイルを作らない
" set noswapfile
" " バックアップファイルを作らない
" set nowritebackup
" " バックアップをしない
" set nobackup
" " バックスペースで各種消せるようにする
set backspace=indent,eol,start
" " ビープ音を消す
" set vb t_vb=
" set novisualbell
" " OSのクリップボードを使う
" set clipboard+=unnamed
" set clipboard=unnamed
" " 不可視文字を表示
set list
" " 行番号を表示
set number
" " 右下に表示される行・列の番号を表示する
set ruler
" " compatibleオプションをオフにする
" set nocompatible
" " 移動コマンドを使ったとき、行頭に移動しない
" set nostartofline
" " 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" " 対応括弧をハイライト表示する
set showmatch
" " 対応括弧の表示秒数を3秒にする
" set matchtime=3
" " ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" " 入力されているテキストの最大幅を無効にする
" set textwidth=0
" " 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" " インデントをshiftwidthの倍数に丸める
" set shiftround
" " 補完の際の大文字小文字の区別しない
" set infercase
" " 文字がない場所にもカーソルを移動できるようにする
" set virtualedit=all
" " 変更中のファイルでも、保存しないで他のファイルを表示
" set hidden
" " 新しく開く代わりにすでに開いてあるバッファを開く
" set switchbuf=useopen
" " 小文字の検索でも大文字も見つかるようにする
set ignorecase
" " ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" " インクリメンタルサーチを行う
" set incsearch
" " 検索結果をハイライト表示
set hlsearch
" " コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" " マウスモード有効
set mouse=a
" " xtermとscreen対応
" set ttymouse=xterm2
" " コマンドを画面最下部に表示する
" set showcmd

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

"-------------------------
" End Neobundle Settings.
"-------------------------

