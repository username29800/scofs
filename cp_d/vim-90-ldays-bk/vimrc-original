set nocp number autoindent smartindent tabstop=2 shiftwidth=2 expandtab wildmenu
set completeopt=menu,menuone,noinsert
set cursorline ruler laststatus=2 showmode showcmd showtabline=2
set noundofile swapfile hlsearch incsearch ignorecase smartcase wildmode=longest:full,list:full
set numberwidth=7 showmatch wrap list linebreak
set virtualedit=all backspace=start,indent,eol fileformats=unix,dos fileencodings=utf-8 hidden bufhidden=hide autoread updatetime=250 conceallevel=0 nomodeline
set mouse=a
set listchars=
set noautochdir noequalalways

"gui font for vim on unix
"set guifont=D2Coding\ 12
"gui font for vim on windows
"set guifont=D2Coding:h12
"make gVim look like Vim on cterm
"set guioptions=

syn on

let scnt=0
command D e .
command DD let dstwd=getcwd() | exec 'bufdo cd'dstwd | exec 'windo cd'dstwd
command DS lcd %:h
command F setlocal autoread noundofile encoding=utf-8 fileencoding=utf-8 fileformat=unix
command S buffer scratch_90-linuxdays | F
command SS enew | execute 'file' 'scratch__'.scnt | let scnt=scnt+1 | F
command -nargs=1 SSR let scnt=<args>
command -nargs=1 SD execute 'buffer scratch__'.<args>
command U argdo setlocal! fileformat=unix
command EE qa
command EEE qa!
command WW bufdo wa! | qa
command -nargs=1 WF w <args> | e <args>
command -nargs=1 WD cd <args> | let dstwd=getcwd() | exec 'bufdo cd'dstwd | exec 'windo cd'dstwd
command -nargs=1 RWD lcd <args>
command H enew | file help_90-linuxdays | setlocal noautoindent nosmartindent | normal i==Commands==<Enter>D - Open Current Directory<Enter>DD - Change Working Directory to .<Enter>DS - Change Working Directory to . (only for current file)<Enter><Enter>F - Apply Recommended Settings to Current File<Enter><Enter>S - Call Scratch (memo) Buffer<Enter>SS - New Scratch Buffer<Enter>SD <lt>N> - Call Scratch no.<lt>N><Enter>SSR <lt>N> - Forcibly Set Scratch Index to <lt>N><Enter><Enter>U - Convert Every Open File to Unix format (Line Endings are LF)<Enter><Enter>EE - Exit Normally<Enter>EEE - Exit Forcibly<Enter>WW - Save Every Open File and Exit<Enter> -- This may save scratch buffers to current working directory!<Enter><Enter>R, RR - Undocumented<Enter><Enter>WD <lt>D> - Change Working Directory to <lt>D><Enter>RWD <lt>D> - Change Working Directory to <lt>D> (only for current file)<Enter><Enter>Terminal commands are disabled by default<Enter>T - Start a Terminal inside Vim<Enter>TR - Start a Shell Instance<Enter><Enter>H - Show This Help<Enter><Enter>Ion - Enter Inspector Mode (shows space, nbsp, and eol)<Enter>Ioff - Exit Inspector Mode<Enter>Hn - Extended Highlight Mode for Inspector Mode (Hg for gVim)<Enter>Hnn - Disable Extended Highlight Mode (Hgn for gVim)<ESC>

let cidx=getpos('.')

autocmd InsertCharPre * if v:char =~ '\k' && !pumvisible() | call feedkeys("\<C-n>") | endif
autocmd BufNewFile * F
autocmd BufWrite * lcd %:h
autocmd BufRead * setlocal autoread encoding=utf-8 | lcd %:h

" uncomment the lines below to enable real-time shared scratch buffer
"autocmd BufEnter scratch_90-linuxdays lcd %:h | set updatetime=120 | checktime
"autocmd CursorMoved scratch_90-linuxdays checktime
"autocmd BufLeave scratch_90-linuxdays set updatetime=250
"autocmd InsertEnter scratch_90-linuxdays set updatetime=40
"autocmd InsertLeave scratch_90-linuxdays set updatetime=120
"autocmd CursorHold,CursorMoved,CursorMovedI,InsertLeavePre,InsertEnter scratch_90-linuxdays let cidx=getpos('.')
"autocmd TextChanged,InsertLeave scratch_90-linuxdays | update! | call setpos('.', cidx)
set printheader=""

highlight CursorLine gui=NONE cterm=NONE term=NONE guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLine gui=reverse cterm=reverse term=reverse guibg=Black guifg=NONE ctermbg=Black ctermfg=NONE
highlight Cursor gui=NONE cterm=NONE guibg=DarkYellow guifg=White ctermbg=DarkYellow ctermfg=White
highlight CursorLineNr gui=NONE cterm=NONE term=reverse
highlight CursorLineNr guibg=Cyan guifg=White
highlight CursorLineNr ctermbg=Cyan ctermfg=White
highlight LineNr guibg=DarkGreen guifg=Black
highlight LineNr ctermbg=DarkGreen ctermfg=Black
highlight Comment gui=NONE cterm=NONE term=reverse
highlight Comment guibg=Grey guifg=Black
highlight Comment ctermbg=Grey ctermfg=Black
highlight Normal guibg=Black guifg=Grey
highlight Normal ctermbg=Black ctermfg=Grey
highlight String gui=bold cterm=bold term=bold
highlight String guibg=DarkBlue guifg=Yellow
highlight String ctermbg=DarkBlue ctermfg=Yellow
highlight Constant gui=bold cterm=bold term=bold
highlight Constant guibg=DarkBlue guifg=Yellow
highlight Constant ctermbg=DarkBlue ctermfg=Yellow
highlight Statement gui=bold cterm=bold term=bold
highlight Statement guibg=DarkRed guifg=Cyan
highlight Statement ctermbg=DarkRed ctermfg=Cyan
highlight Special guibg=Black guifg=White
highlight Special ctermbg=Black ctermfg=White
highlight NonText gui=NONE cterm=NONE term=underline,reverse
highlight NonText guibg=DarkBlue guifg=White
highlight NonText ctermbg=DarkBlue ctermfg=White
highlight SpecialKey gui=NONE cterm=NONE term=underline,reverse
highlight SpecialKey guibg=DarkRed guifg=White
highlight SpecialKey ctermbg=DarkRed ctermfg=White
highlight Number gui=underline cterm=underline term=underline
highlight Number guibg=DarkMagenta guifg=Yellow
highlight Number ctermbg=DarkMagenta ctermfg=Yellow
highlight Function gui=NONE cterm=NONE term=reverse
highlight Function guibg=DarkCyan guifg=Black
highlight Function ctermbg=DarkCyan ctermfg=Black
highlight Identifier gui=NONE cterm=NONE term=reverse
highlight Identifier guibg=DarkCyan guifg=Black
highlight Identifier ctermbg=DarkCyan ctermfg=Black
highlight Type gui=bold cterm=bold term=bold,reverse
highlight Type guibg=DarkGreen guifg=White
highlight Type ctermbg=DarkGreen ctermfg=White
highlight MatchParen guibg=White guifg=DarkRed
highlight MatchParen ctermbg=White ctermfg=DarkRed
highlight ModeMsg gui=NONE cterm=NONE term=reverse
highlight ModeMsg guibg=DarkGreen guifg=Black
highlight ModeMsg ctermbg=DarkGreen ctermfg=Black
highlight Operator guibg=Black guifg=Cyan
highlight Operator ctermbg=Black ctermfg=Cyan
highlight Pmenu guibg=DarkCyan guifg=Black
highlight Pmenu ctermbg=DarkCyan ctermfg=Black
highlight PmenuSel guibg=Green guifg=Black
highlight PmenuSel ctermbg=Green ctermfg=Black
highlight StatusLine gui=NONE cterm=NONE term=reverse
highlight StatusLine guibg=DarkCyan guifg=Black
highlight StatusLine ctermbg=DarkCyan ctermfg=Black
highlight StatusLineNC gui=NONE cterm=NONE term=NONE
highlight StatusLineNC guibg=Black guifg=Green
highlight StatusLineNC ctermbg=Black ctermfg=Green
highlight TabLine gui=NONE cterm=NONE term=reverse
highlight TabLine guibg=DarkCyan guifg=Black
highlight TabLine ctermbg=DarkCyan ctermfg=Black
highlight TabLineFill gui=NONE cterm=NONE term=reverse
highlight TabLineFill guibg=DarkCyan guifg=Black
highlight TabLineFill ctermbg=DarkCyan ctermfg=Black
highlight Visual cterm=NONE gui=NONE term=reverse,underline
highlight Visual guibg=DarkBlue guifg=Cyan
highlight Visual ctermbg=DarkBlue ctermfg=Cyan
highlight VertSplit gui=NONE cterm=NONE term=NONE
command Ion set listchars=eol:$,space:.,nbsp::
command Ioff set listchars=
command Hg highlight NonText guibg=DarkBlue guifg=White
command Hn highlight NonText ctermbg=DarkBlue ctermfg=White
command Hgn highlight NonText guibg=NONE guifg=White
command Hnn highlight NonText ctermbg=NONE ctermfg=White
Hnn
Hgn

