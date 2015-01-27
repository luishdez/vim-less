" Vim filetype plugin
" Language:     LessCSS
" Author:       Tim Pope <vimNOSPAM@tpope.org>
" Maintainer:   Luis Hdez <luis.munoz.hdez@gmail.com>
" Last Change:  2015 Jan 27

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< def< inc< inex< ofu< sua<"

setlocal iskeyword+=-
setlocal commentstring=//%s
setlocal define=^\\s*\\%(@mixin\\\|=\\)
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\\|^\\)\\zs','_','')
setlocal omnifunc=csscomplete#CompleteCSS
setlocal suffixesadd=.less
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,://
setlocal fo=jcroql

let &l:include = '^\s*@import\s\+\%(url(\)\=["'']\='

" vim:set sw=2:
