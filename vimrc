# portable vimrc.  sweet.

" enable syntax highlighting
:syntax enable

" set the current dir to the same as the file shown
" useful for then using % to get the current file
:autocmd BufEnter * cd %:p:h

" set souloUr scheme
colorscheme desert

" set the line numbering colours
:hi linenr guifg=grey guibg=black

" set the font and size, Linux dependaent, prob use Courier for windowz
:set guifont=Monospace\ 9

" incrementally search
:set incsearch

"make ctrl-t open a new tab like every other program ever
:map <C-T> :tabnew<CR>

"make return indent to the same as the prev line
:set autoindent

" turn tabs into spaces
:set expandtab

" set the indenting amount (for >> and <<)
:set shiftwidth=4

" set the tab amount
:set tabstop=4

:set wildmenu

:set scrolloff=2
:set guioptions=aegimrLt
:set hlsearch