#!/bin/sh
dest="$(cd "$1" && pwd)"
mkdir -p "$dest/vim-90-ldays-bk"
cp -a $dest/.vimrc $dest/vim-90-ldays-bk/vimrc-original
echo "set nocp number autoindent smartindent tabstop=2 shiftwidth=2 expandtab wildmenu" > $dest/vim-90-ldays-bk/v90ld.vim
echo "set completeopt=menu,menuone,noinsert" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "set cursorline ruler laststatus=2 showmode showcmd showtabline=2" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "set noundofile swapfile hlsearch incsearch ignorecase smartcase wildmode=longest:full,list:full" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "set numberwidth=7 showmatch wrap list linebreak" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "set virtualedit=all backspace=start,indent,eol fileformats=unix,dos fileencodings=utf-8 hidden bufhidden=hide autoread updatetime=250 conceallevel=0 nomodeline" >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'set mouse=a' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'set listchars=' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'set noautochdir noequalalways' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"gui font for vim on unix' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"set guifont=D2Coding\ 12' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"gui font for vim on windows' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"set guifont=D2Coding:h12' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"make gVim look like Vim on cterm' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"set guioptions=' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'syn on' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'let scnt=0' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command D e .' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command DD let dstwd=getcwd() | exec '\''bufdo cd'\''dstwd | exec '\''windo cd'\''dstwd' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command DS lcd %:h' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command F setlocal autoread noundofile encoding=utf-8 fileencoding=utf-8 fileformat=unix' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command S buffer scratch_90-linuxdays | F' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command SS enew | execute '\''file'\'' '\''scratch__'\''.scnt | let scnt=scnt+1 | F' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command -nargs=1 SSR let scnt=<args>' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command -nargs=1 SD execute '\''buffer scratch__'\''.<args>' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command U argdo setlocal! fileformat=unix' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command EE qa' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command EEE qa!' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command WW bufdo wa! | qa' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command -nargs=1 WF w <args> | e <args>' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command -nargs=1 WD cd <args> | let dstwd=getcwd() | exec '\''bufdo cd'\''dstwd | exec '\''windo cd'\''dstwd' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command -nargs=1 RWD lcd <args>' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command H enew | file help_90-linuxdays | setlocal noautoindent nosmartindent | normal i==Commands==<Enter>D - Open Current Directory<Enter>DD - Change Working Directory to .<Enter>DS - Change Working Directory to . (only for current file)<Enter><Enter>F - Apply Recommended Settings to Current File<Enter><Enter>S - Call Scratch (memo) Buffer<Enter>SS - New Scratch Buffer<Enter>SD <lt>N> - Call Scratch no.<lt>N><Enter>SSR <lt>N> - Forcibly Set Scratch Index to <lt>N><Enter><Enter>U - Convert Every Open File to Unix format (Line Endings are LF)<Enter><Enter>EE - Exit Normally<Enter>EEE - Exit Forcibly<Enter>WW - Save Every Open File and Exit<Enter> -- This may save scratch buffers to current working directory!<Enter><Enter>R, RR - Undocumented<Enter><Enter>WD <lt>D> - Change Working Directory to <lt>D><Enter>RWD <lt>D> - Change Working Directory to <lt>D> (only for current file)<Enter><Enter>Terminal commands are disabled by default<Enter>T - Start a Terminal inside Vim<Enter>TR - Start a Shell Instance<Enter><Enter>H - Show This Help<Enter><Enter>Ion - Enter Inspector Mode (shows space, nbsp, and eol)<Enter>Ioff - Exit Inspector Mode<Enter>Hn - Extended Highlight Mode for Inspector Mode (Hg for gVim)<Enter>Hnn - Disable Extended Highlight Mode (Hgn for gVim)<ESC>' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'let cidx=getpos('\''.'\'')' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'autocmd InsertCharPre * if v:char =~ '\''\k'\'' && !pumvisible() | call feedkeys("\<C-n>") | endif' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'autocmd BufNewFile * F' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'autocmd BufWrite * lcd %:h' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'autocmd BufRead * setlocal autoread encoding=utf-8 | lcd %:h' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '" uncomment the lines below to enable real-time shared scratch buffer' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd BufEnter scratch_90-linuxdays lcd %:h | set updatetime=120 | checktime' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd CursorMoved scratch_90-linuxdays checktime' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd BufLeave scratch_90-linuxdays set updatetime=250' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd InsertEnter scratch_90-linuxdays set updatetime=40' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd InsertLeave scratch_90-linuxdays set updatetime=120' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd CursorHold,CursorMoved,CursorMovedI,InsertLeavePre,InsertEnter scratch_90-linuxdays let cidx=getpos('\''.'\'')' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '"autocmd TextChanged,InsertLeave scratch_90-linuxdays | update! | call setpos('\''.'\'', cidx)' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'set printheader=""' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight CursorLine gui=NONE cterm=NONE term=NONE guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE" >> $dest/vim-90-ldays-bk/v90ld.vim
echo \""highlight CursorLine gui=reverse cterm=reverse term=reverse guibg=Black guifg=NONE ctermbg=Black ctermfg=NONE" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Cursor gui=NONE cterm=NONE guibg=DarkYellow guifg=White ctermbg=DarkYellow ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight CursorLineNr gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight CursorLineNr guibg=Cyan guifg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight CursorLineNr ctermbg=Cyan ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight LineNr guibg=DarkGreen guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight LineNr ctermbg=DarkGreen ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Comment gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Comment guibg=Grey guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Comment ctermbg=Grey ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Normal guibg=Black guifg=Grey" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Normal ctermbg=Black ctermfg=Grey" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight String gui=bold cterm=bold term=bold" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight String guibg=DarkBlue guifg=Yellow" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight String ctermbg=DarkBlue ctermfg=Yellow" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Constant gui=bold cterm=bold term=bold" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Constant guibg=DarkBlue guifg=Yellow" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Constant ctermbg=DarkBlue ctermfg=Yellow" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Statement gui=bold cterm=bold term=bold" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Statement guibg=DarkRed guifg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Statement ctermbg=DarkRed ctermfg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Special guibg=Black guifg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Special ctermbg=Black ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight NonText gui=NONE cterm=NONE term=underline,reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight NonText guibg=DarkBlue guifg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight NonText ctermbg=DarkBlue ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight SpecialKey gui=NONE cterm=NONE term=underline,reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight SpecialKey guibg=DarkRed guifg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight SpecialKey ctermbg=DarkRed ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Number gui=underline cterm=underline term=underline" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Number guibg=DarkMagenta guifg=Yellow" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Number ctermbg=DarkMagenta ctermfg=Yellow" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Function gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Function guibg=DarkCyan guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Function ctermbg=DarkCyan ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Identifier gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Identifier guibg=DarkCyan guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Identifier ctermbg=DarkCyan ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Type gui=bold cterm=bold term=bold,reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Type guibg=DarkBlue guifg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Type ctermbg=DarkBlue ctermfg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight MatchParen guibg=White guifg=DarkRed" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight MatchParen ctermbg=White ctermfg=DarkRed" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight ModeMsg gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight ModeMsg guibg=DarkGreen guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight ModeMsg ctermbg=DarkGreen ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Operator guibg=Black guifg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Operator ctermbg=Black ctermfg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Pmenu guibg=DarkCyan guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Pmenu ctermbg=DarkCyan ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight PmenuSel guibg=Green guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight PmenuSel ctermbg=Green ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight StatusLine gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight StatusLine guibg=DarkCyan guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight StatusLine ctermbg=DarkCyan ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight StatusLineNC gui=NONE cterm=NONE term=NONE" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight StatusLineNC guibg=Black guifg=Green" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight StatusLineNC ctermbg=Black ctermfg=Green" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight TabLine gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight TabLine guibg=DarkCyan guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight TabLine ctermbg=DarkCyan ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight TabLineFill gui=NONE cterm=NONE term=reverse" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight TabLineFill guibg=DarkCyan guifg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight TabLineFill ctermbg=DarkCyan ctermfg=Black" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Visual cterm=NONE gui=NONE term=reverse,underline" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Visual guibg=DarkBlue guifg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight Visual ctermbg=DarkBlue ctermfg=Cyan" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "highlight VertSplit gui=NONE cterm=NONE term=NONE" >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command Ion set listchars=eol:$,space:.,nbsp::' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'command Ioff set listchars=' >> $dest/vim-90-ldays-bk/v90ld.vim
echo "command Hg highlight NonText guibg=DarkBlue guifg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "command Hn highlight NonText ctermbg=DarkBlue ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "command Hgn highlight NonText guibg=NONE guifg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo "command Hnn highlight NonText ctermbg=NONE ctermfg=White" >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'Hnn' >> $dest/vim-90-ldays-bk/v90ld.vim
echo 'Hgn' >> $dest/vim-90-ldays-bk/v90ld.vim
echo '' >> $dest/vim-90-ldays-bk/v90ld.vim

cp -a $dest/vim-90-ldays-bk/v90ld.vim $dest/.vimrc
