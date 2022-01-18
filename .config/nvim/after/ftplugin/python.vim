setlocal autoindent
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

iabbrev <buffer> iff if:<left>
iabbrev <buffer> if: NOPENOPENOPE
iabbrev <buffer> eliff elif:<left>
iabbrev <buffer> elif: NOPENOPENOPE
iabbrev <buffer> forr for:<left>
iabbrev <buffer> for: NOPENOPENOPE

nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

let b:ale_linters = ['flake8', 'pylint-django']
let b:ale_fixers = ['yapf']
