" =========================BASIC CONFIGURATION=========================
set nocompatible " Disable nocompatible mode (noco)
" Set file language encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" Set Encoding and languare
set encoding=utf-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8

" =========================Appearance Configuration==================== 
" Set Fonts
if has("win32")
  set guifont=Consolas:h12:cANSI
else
  set guifont=DejaVu\ Sans\ Mono\ 12
endif
" Set theme and wrap
if (has("gui_running"))
    set guioptions+=b " add horizontal banner
    set nowrap " no wrap when using GUI
    colo torte " colorscheme
else
    set wrap " wrap when using cmd
    colo ron " colorshcme
endif
set number	" Set Line number (nu)
set ruler " display row and column on bottom
set hlsearch	" High-Light-Search (hls)
set incsearch	" Search when typing (is)
set mousemodel=popup " Quick Menu when right click
set mouse=a " When drap mouse, select in VISUAL mode 

" =====================Text Editing Configuration======================
syntax on " Coloring keywords
" indent - can delete previous letters
" eol - can delete upper line's \n
" start - can delete auto-indent
set backspace=indent,eol,start
" Normal or Visual: b-Backspace; s-Space; h-H; l-L; < Left; > Right
" Normal : ~ - switch letter_case
" Insert or Replace: [ Left; ] Right
" Add to whichwrap if want to cross lines, use , to split
set whichwrap=b,s
set ambiwidth=double " Full angle characters
set sw=2 " shiftwidth when auto indent
set ts=2 " tabstop - space count when press TAB
set et   " expandtab - replace TAB with space
set smarttab " delete all space of et with Backspace once
" set spell " Check spell. "z=" for suggestion; "]s" to the next incorrect

" =====================Line Break Configuration========================
set tw=78 " line break after 78 characters in a line
set lbr " linebreak - Don't break in the middle of a word
set fo+=mB " m-allow to break between Han characters; B-no space when merge

" =======================Indent  Configuration=========================
set nosm " noshowmatch - don't show match when typing parathesis
set cin " cindent - use C/C++ auto index feature
set cino=:4g0t0(sus " cinoptios - nConfigure C/C++ auto index 
set ai " autoindent - auto indent with all codes

" =======================Ex Mode Configuration=========================
set history=200 " Ex Mode history numbers

" ========================Other Configuration==========================
set selectmode= " don't use selectmode
set keymodel= " use "Shift+arraw" to jump between words in INSERT; OR "keymodel=startsel,stopsel" to make select letters
set selection=inclusive " Selecting area includes location of cursor
set wildmenu " show beautiful delegating menu when TAP to complete
set wildmode=full " set wildmode: =full / =longest,list
set nrformats=octal,hex " let <C-a> and <C-x> auto detect 0(oct) and 0x(hex)

" ======================Searching Configuration========================
set ignorecase " ignore case when searching
set smartcase " Don't ignore case when one of the letter is UPPER
set magic " use \. for searching .; if turned on, cannot ues 'it' or 'at'
set wrapscan " circulate search

" ====================Vundle and Plugins Configuraton==================
filetype off " required for Vundle Conf.!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" ************* 4 Methods to define the source of Plugins *************
" I) vim-scripts vault of Github (replace SPACE with '-')
" Bundle 'L9'
Bundle 'The-NERD-tree'
" II) other users' vaults of Github (username/pluginname)
" Bundle 'tpope/vim-rails.git'
Bundle 'mattn/emmet-vim'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-lastpat'
Bundle 'jceb/vim-textobj-uri'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'whatyouhide/vim-textobj-erb'
Bundle 'Valloric/YouCompleteMe'
"
" III) other git vaults instead of Github (use git addr)
" Bundle 'git://git.wincent.com/command-t.git'
"
" IV) local Git vault
" Bundle 'file:///Users/gmarik/path/to/plugin' 

" ======filetype should be configured after Vundle is configured=======
filetype plugin indent on " Turn on filetype plugin to adapt auto indent

" ===================Other Plugins Configuration=======================
runtime macros/matchit.vim
" ***************************javacomplete2*****************************
" ***************************YouCompleteMe*****************************
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion=3
let g:ycm_complete_in_comments=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1

" ******************************Emmet**********************************
let g:user_emmet_install_global=0
autocmd FileType html,css,eruby EmmetInstall

" =====================Set Title for Script File=======================
"autocmd BufNewFile *.py,*.sh,*.rb, exec ":call SetTitle()"
"let $author_name="Derek Chen"
"let $author_email="cghderek@gmail.com"
"
"func SetTitle()
"    call setline(1,"\####################################################################")
"    call append(line("."),"\# File Name: ".expand("%"))
"    call append(line(".")+1,"\# Author: ".$author_name)
"    call append(line(".")+2,"\# Email: ".$author_email)
"    call append(line(".")+3,"\# Created Time: ".strftime("%c"))
"    call append(line(".")+4,"\#===================================================================")
"    if (&filetype ==? "sh")
"        call append(line(".")+5,"\#!/bin/bash")
"    elseif (&filetype ==? "py")
"        call append(line(".")+5,"\#!/usr/bin/python")
"    elseif (&filetype ==? "rb")
"        call append(line(".")+5,"\# Ruby")
"    else
"        call append(line(".")+5,"\########")
"    endif
"    call append(line(".")+6, "")
"    autocmd BufNewFile * normal G
"endfunction

" ==========================File Type Related==========================
" *********************Ruby / Rails Configuraton***********************
if (&filetype ==? 'ruby')
    set ts=2 " tabstop - space count when press TAB
    set sw=2 " shiftwidth when auto indent
endif

" ============================Key Mapping==============================
" append :nohlsearch into <C-l>
 nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
