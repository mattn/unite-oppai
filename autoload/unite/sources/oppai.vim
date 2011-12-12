scriptencoding utf-8

function! unite#sources#oppai#define()
  return s:source
endfunction

let s:source = {
\ 'name': 'oppai',
\}

function! s:source.gather_candidates(args, context)
  return [
  \  {'word': '(・)(・)'},
  \  {'word': '(◎)(◎)'},
  \]
endfunction
