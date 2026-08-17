" ダークモード
set background=dark
set title
set laststatus=1
set number
set relativenumber

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smartindent
set visualbell t_vb=
set cursorline
set list
"set listchars=tab:>-,trail:-,eol:$,space:u
"set listchars=tab:>-,trail:-,space:.
set listchars=tab:»·,trail:·,extends:»,precedes:«,nbsp:␣

hi SpecialKey ctermfg=246
hi LineNr ctermfg=green
hi NonText ctermfg=236

syntax on
filetype plugin indent on

" --- 基本表示 ---
" 通常文字。真っ白より少し落とす
hi Normal ctermfg=250 ctermbg=NONE
" 演算子
hi Operator ctermfg=214
hi SpecialKey ctermfg=235
hi LineNr ctermfg=green
hi NonText ctermfg=236
hi CursorLine ctermbg=236 cterm=NONE

" --- 補完候補リスト ---
highlight Pmenu ctermbg=238 ctermfg=White
highlight PmenuSel ctermbg=Blue ctermfg=White

augroup C_highlight
    autocmd!
    autocmd FileType c setlocal formatoptions-=ro
	" コメント
    autocmd FileType c hi Comment ctermfg=71
	" プリプロセッサ
    autocmd FileType c hi PreProc ctermfg=198
	" 数値・文字定数など
    autocmd FileType c hi Constant ctermfg=141
	" 文字列
    autocmd FileType c hi String ctermfg=darkyellow
	" 変数名・関数名など
    autocmd FileType c hi Identifier ctermfg=lightblue
	" if, for, while, return など
    autocmd FileType c hi Statement ctermfg=198
	" int, char, void, struct など
    autocmd FileType c hi Type ctermfg=Blue
    autocmd FileType c hi Structure ctermfg=198

	" 演算子
	autocmd FileType c syntax match cOperator /[-+*%=!<>&|^~?:.]/
	autocmd FileType c syntax match cOperatorSlash /\/\%([/*]\)\@!/
	autocmd FileType c hi cOperator ctermfg=67
	autocmd FileType c hi cOperatorSlash ctermfg=180
augroup END

augroup Lisp_highlight
	autocmd!

	" F5キー: CLISP実行
	autocmd FileType lisp nnoremap <buffer> <F5> :w<CR>:!clisp %;<CR>

augroup END

" ---  キーマップ ---
let mapleader = "\\"

" ノーマルモード
nnoremap <leader>x Ix <Esc>

