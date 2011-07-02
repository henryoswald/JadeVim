" Vim indent file
" Language: Jade
" Maintainer: Joshua Borton
" Credits: Tim Pope (vim-jade)
" Last Change: 2010 Sep 22

if exists("b:did_indent")
  finish
endif

unlet! b:did_indent
let b:did_indent = 1

setlocal autoindent sw=2 et
setlocal indentexpr=GetJadeIndent()
setlocal indentkeys=o,O,*<Return>,},],0),!^F

" Only define the function once.
if exists("*GetJadeIndent")
  finish
endif

let s:attributes = '\%((.\{-\})\)'
let s:tag = '\([%.#][[:alnum:]_-]\+\|'.s:attributes.'\)*[<>]*'

if !exists('g:jade_self_closing_tags')
  let g:jade_self_closing_tags = 'meta|link|img|hr|br'
endif

setlocal formatoptions+=r
setlocal comments+=n:\|
