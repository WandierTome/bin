hi statusline   ctermfg=0 ctermbg=7   guibg=#2A94E0 guifg=#000000
hi statuslinenc ctermfg=0 ctermbg=240 guibg=#066090 guifg=#333333

augroup ModeEvents
    autocmd!
    au InsertEnter * hi statusline ctermfg=0 ctermbg=10 guibg=#00ae6b guifg=#000000
    au InsertLeave * hi statusline ctermfg=0 ctermbg=7  guibg=#2A94E0 guifg=#000000
    au ModeChanged *:[vV\x16]* hi statusline ctermfg=0 ctermbg=13 guibg=#C990DC
    au Modechanged [vV\x16]*:* hi statusline ctermfg=0 ctermbg=7 guibg=#2A94E0
augroup end

function! LoadStatusLine()

    let g:left_sep='╲'
    let g:right_sep='╱'

    let g:currentmode={
        \ 'n'  : 'Normal',
        \ 'no' : 'Normal-Operator Pending',
        \ 'v'  : 'Visual',
        \ 'V'  : 'V-Line',
        \ '' : 'V-Block',
        \ 's'  : 'Select',
        \ 'S'  : 'S-Line',
        \ '' : 'S-Block',
        \ 'i'  : 'Insert',
        \ 'R'  : 'Replace',
        \ 'Rv' : 'V-Replace',
        \ 'c'  : 'Command',
        \ 'cv' : 'Vim Ex',
        \ 'ce' : 'Ex',
        \ 'r'  : 'Prompt',
        \ 'rm' : 'More',
        \ 'r?' : 'Confirm',
        \ '!'  : 'Shell',
        \ 't'  : 'Terminal'
        \}

    set statusline=\ %n
    set statusline+=\ %{left_sep}
    set statusline+=\ %{toupper(g:currentmode[mode()])}
    set statusline+=\ %{left_sep}
    set statusline+=\ %f%m\ %y
    set statusline+=\ %{left_sep}
    set statusline+=\ %=
    set statusline+=\ %{right_sep}
    set statusline+=\ %{&ff}
    set statusline+=\ %{right_sep}
    set statusline+=\ %{&fenc!=''?&fenc:&enc}
    set statusline+=\ %{right_sep}
    set statusline+=\ L:%l\ C:%v
    set statusline+=\ %{right_sep}
    set statusline+=\ %P\ 

endfunction

call LoadStatusLine()

