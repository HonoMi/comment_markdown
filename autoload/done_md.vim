let s:save_cpo = &cpo
set cpo&vim

function! done_md#done_md(line)
    if a:line =~ ' *<!--'
        return
    endif
    call setline('.', substitute(substitute(a:line, '^', '<!--[D] ', ''), '$', ' -->', ''))
endfunction

function! done_md#undone_md(line)
    call setline('.', substitute(substitute(a:line, '<!--\[D\] *', '', ''), ' *-->', '', ''))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
