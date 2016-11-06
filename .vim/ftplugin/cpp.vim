function! Comment() range
    if visualmode() ==# "V"
        " Comment each selected lines with //
        execute a:firstline . "," . a:lastline . "s/^/\/\/ /"
    elseif visualmode() ==# "v"
        " Comment the selected range with /* ... */
        execute "normal! `<i/* \<esc>"
        execute "normal! `>la */\<esc>"
    endif
endfunction

nnoremap <buffer> <localleader>c I// <esc>
vnoremap <buffer> <localleader>c :call Comment() <cr>
