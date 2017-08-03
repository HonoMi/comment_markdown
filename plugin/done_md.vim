if exists("g:loaded_done_md")
    finish
endif
let g:loaded_done_md = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 Hoge call getline(".")
command! -nargs=0 DoneMd call done_md#hoge(getline("."))
command! -nargs=0 UnDoneMd call done_md#undone_md(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpo
