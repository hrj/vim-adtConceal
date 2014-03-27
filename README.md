This syntax file displays unicode characters for ASCII Delimited Text files.


*This does not – at any point – alter the original file*. It simply uses Vim's
"conceal" feature to map unprintable character to printable ones. Whenever the cursor is at
a line with concealed text, the original text will be shown.

### Known issues
I am seeking ideas about how to solve these:

  * The conceal feature works only when the cursor is on a different line. However,
    ASCII Delimited Text files generally have only one line.
  * You need to manually set the `filetype` to `adt` for the magic to begin. This can be done with
    `set ft=adt`
  * It would be cool if we could set the `cchar` for `record separator` to a carriage return. Alas, that throws an error.

### Install
To install, simply put `adt.vim` in `~/.vim/after/syntax` or use something
like [Pathogen](https://github.com/tpope/vim-pathogen) (recommended).

Vim ≥ 7.3 is required.

### Credits
This plug-in is adapted from [Scala Conceal](https://github.com/mpollmeier/vim-scalaConceal)


