if exists("b:current_syntax")
  finish
endif

" {{{ Imports
runtime! syntax/css.vim
runtime! after/syntax/css.vim
runtime! after/syntax/css/*.vim
" }}}

" Syntax {{{
syn case ignore
syn region lessDefinition transparent matchgroup=cssBraces start='{' end='}' contains=css.*Attr,css.*Prop,cssVendor,cssComment,cssValue.*,cssColor,cssTagName,cssPseudoClass,cssUrl,cssImportant,cssError,cssStringQ,cssStringQQ,cssFunction,cssUnicodeEscape,lessDefinition,lessComment,lessClassChar,lessVariable,lessMixinChar,lessAmpersandChar,lessFunction,lessNestedSelector,@cssColors fold
syn match lessVariable "@[[:alnum:]_-]\+" contained
syn match lessVariable "@[[:alnum:]_-]\+" nextgroup=lessVariableAssignment skipwhite
syn match lessVariableAssignment ":" contained nextgroup=lessVariableValue skipwhite
syn match lessVariableValue ".*;"me=e-1 contained contains=lessVariable,lessOperator,lessDefault,cssValue.*,@cssColors "me=e-1 means that the last char of the pattern is not highlighted
syn match lessOperator "+" contained
syn match lessOperator "-" contained
syn match lessOperator "/" contained
syn match lessOperator "*" contained
syn match lessNestedSelector "[^/]* {"me=e-1 contained contains=cssTagName,cssClassName,cssAttributeSelector,lessAmpersandChar,lessVariable,lessMixinChar,lessFunction,lessNestedProperty
syn match lessNestedProperty "[[:alnum:]]\+:"me=e-1 contained
syn match lessDefault "!default" contained
syn match lessMixinChar "\.[[:alnum:]_-]\+;"me=e-1 contained nextgroup=lessClass
syn region lessMixinFunc contained matchgroup=cssFunctionName start="\.[[:alnum:]_-]*(" end=")" oneline extend contains=cssURL,lessVariable,cssStringQ,cssStringQQ,cssColor
syn match lessAmpersandChar "&" contained nextgroup=lessClass,cssPseudoClass
syn match lessClass "[[:alnum:]_-]\+" contained
syn match lessComment "//.*$" contains=@Spell
" }}}

" Functions {{{
" misc functions
syn keyword lessFunction color image-size image-width image-height convert data-uri default unit get-unit svg-gradient containedin=cssDefinition contained
" string functions
syn keyword lessFunction escape e % replace containedin=cssDefinition contained
" list functions
syn keyword lessFunction length extract containedin=cssDefinition contained
" math functions
syn keyword lessFunction ceil floor percentage round sqrt abs sin asin cos acos tan atan pi pow mod min max containedin=cssDefinition contained
" type functions
syn keyword lessFunction isnumber isstring iscolor iskeyword isurl ispixel isem ispercentage isunit containedin=cssDefinition contained
" color definition
syn keyword lessFunction rgb rgba argb hsl hsla hsv hsva containedin=cssDefinition contained
" color channel information
syn keyword lessFunction hue saturation lightness hsvhue hsvsaturation hsvvalue red green blue alpha luma luminance containedin=cssDefinition contained
" color operations
syn keyword lessFunction saturate desaturate lighten darken fadein fadeout fade spin mix greyscale contrast containedin=cssDefinition contained
" color blending
syn keyword lessFunction multiply screen overlay softlight hardlight difference exclusion average negation containedin=cssDefinition contained
" }}}

" {{{ Keyword definitions
hi def link lessVariable Identifier
hi def link lessVariableValue Constant
hi def link lessDefault Special
hi def link lessComment Comment
hi def link lessFunction Function
hi def link lessMixinChar Special
hi def link lessAmpersandChar Special
hi def link lessNestedProperty Type
hi def link lessClass Identifier
" }}}

let b:current_syntax = "less"
