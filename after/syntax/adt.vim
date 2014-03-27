"=============================================================================
" What Is This: Add some conceal operator for your ADT (ASCII delimited text) files
" File:         adt.vim (conceal enhancement)
" Author:       Michael Pollmeier <conceal@michaelpollmeier.com>
" Last Change:  2014-3-27
" Version:      1.0.0
" Require:
"   set nocompatible
"     somewhere on your .vimrc
"
"   Vim 7.3 or Vim compiled with conceal patch.
"   Use --with-features=big or huge in order to compile it in.
"
" Usage:
"   Drop this file in your
"       ~/.vim/after/syntax folder (Linux/MacOSX/BSD...)
"       ~/vimfiles/after/syntax folder (Windows)
"
"   For this script to work, you have to set the encoding
"   to utf-8 :set enc=utf-8
"
" Additional:
"     * This plug-in is adapted from https://github.com/mpollmeier/vim-scalaConceal
"     * if you want to avoid the loading, add the following
"       line in your .vimrc :
"        let g:no_adt_conceal = 1
"
if exists('g:no_adt_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

syntax match adtNiceOperator "" conceal cchar=⇥
syntax match adtNiceOperator "" conceal cchar=↵

hi link adtNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2

