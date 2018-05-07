"=============================================================================
" dark_powered.vim --- Dark powered mode of SpaceVim
" Copyright (c) 2016-2017 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================


" SpaceVim Options: {{{
set scrolloff=3
set ignorecase
set smartcase
let g:python2_host_prog = '/home/jay/.py2/bin/python'
let g:python3_host_prog = '/home/jay/.py3/bin/python3'
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:spacevim_guifont = 'DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 11'
let g:spacevim_colorscheme = 'gruvbox'
let g:spacevim_colorscheme_bg = 'dark'
" }}}

" SpaceVim Layers: {{{
SPLayer 'lang#python'
SPLayer 'lang#ruby'
call SpaceVim#layers#load('autocomplete', {
    \ 'auto-completion-return-key-behavior' : 'nil',
    \ 'auto-completion-tab-key-behavior' : 'smart',
    \ 'auto-completion-complete-with-key-sequence' : 'nil',
    \ 'auto-completion-complete-with-key-sequence-delay' : 0.1,
    \ })
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('git')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('checkers', {
    \ 'show_cursor_error' : 0,
    \ })
call SpaceVim#layers#load('tags')
" }}}

" SpaceVim disable the annoying `indentLine` plugin. #589
let g:indentLine_conceallevel = 0
let g:indentLine_concealcursor = 'nc'
let g:indentLine_setConceal = 0
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
