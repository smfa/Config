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

autocmd! bufwritepost .vimrc source ~/.vimrc

" always show the line number and column
:set ruler

" be able to use the mouse in the terminal
:set mouse=a

" adding those quotes is pretty boring
command! -nargs=+ -complete=command AllBuf call AllWindows(<q-args>)

" line numbers
:set number

" execute a command for all buffers ther(sic) are shown in windows
fun !AllWindows(cmnd)
    let cmnd = a:cmnd
    let origw = winnr()
    let i =1
    while (i <= bufnr("$"))
        if bufexists(i)
            let w = bufwinnr(i)
            if w != -1
                echo "=== window: " . w . " file: " . bufname(i)
                execute "normal \<c-w>" . w . "W"
                execute cmnd
            endif
        endif
        let i = i+1
    endwhile
    execute "normal \<c-w>" . origw . "w"
endfun
    
" added 20/02/14 - for moving items up and down

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m +1<CR>==gi
inoremap <A-j> <Esc>:m -2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
