scriptencoding utf-8

function! unite#sources#oppai#define()
  return s:source
endfunction

let s:source = {
\ 'name': 'oppai',
\ 'syntax': "uniteSource__Oppai",
\ 'hooks': {},
\}

function! s:source.gather_candidates(args, context)
  return [
  \  {'word': '(・)(・)'},
  \  {'word': '(◎)(◎)'},
  \]
endfunction

function! s:source.hooks.on_syntax(args, context)
  syntax match Oppai /([・◎])/hs=s+1,he=e-1 containedin=uniteSource__Oppai contained
  highlight Oppai ctermfg=magenta guifg=magenta
endfunction
