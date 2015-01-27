# Vim-less: LESS Syntax for VIM editor

This vim bundle adds syntax highlighting, indenting and autocompletion for the
dynamic stylesheet language [LESS](http://lesscss.org).

This bundle is compatible with [vim-css-color](https://github.com/skammer/vim-css-color),
[vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax) and possibly other
plugins that place code
in `after/syntax/css.vim` or `after/syntax/css/*.vim`.

![vim-less with vim-css-color and vim-css3-syntax (colorscheme solarized)](https://github.com/lenniboy/vim-less/raw/master/screenshot.png)

## Installing and Using

- Install [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) into 
  `~/.vim/autoload/` and add the following line to your `~/.vimrc`:

    call pathogen#infect()

- Make a clone of the `vim-less` repository:

    $ mkdir -p ~/.vim/bundle
    $ cd ~/.vim/bundle
    $ git clone https://github.com/luishdez/vim-less

- OR use [vundle](https://github.com/gmarik/vundle), adding this line to your 
  `~/.vimrc`:

    Bundle 'luishdez/vim-less'

- OR use git submodules:

    $ git submodule add https://github.com/luishdez/vim-less.git bundle/vim-less
    $ git submodule init

### Mapping

`.less` to `.css` , `lessc` is required.

    nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

## Credits

* Initial Fork: [vim-less](https://github.com/groenewege/vim-less)

-------------

MIT LICENSE: Copyright (C) 2015 Luis Hdez.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sub-license,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
<`0`>
