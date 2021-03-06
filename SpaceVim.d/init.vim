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
set clipboard+=unnamedplus
let g:python2_host_prog = $HOME.'/.py2/bin/python'
let g:python3_host_prog = $HOME.'/.py3/bin/python3'
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
" Bookmarks per working directory
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My gutentags settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gutentags_enabled_dirs = ['~/Dropbox/projects', '~/workspace', '~/projects']
let g:gutentags_enabled_user_func = 'CheckEnabledDirs'

function! CheckEnabledDirs(file)
    let file_path = fnamemodify(a:file, ':p:h')

    try
        let gutentags_root = gutentags#get_project_root(file_path)
        if filereadable(gutentags_root . '/.withtags')
            return 1
        endif
    catch
    endtry

    for enabled_dir in g:gutentags_enabled_dirs
        let enabled_path = fnamemodify(enabled_dir, ':p:h')

        if match(file_path, enabled_path) == 0
            return 1
        endif
    endfor

    return 0
endfunction
" }}}

" SpaceVim Custom Plugins: {{{
let g:spacevim_custom_plugins = [
            \ ['maxbrunsfeld/vim-emacs-bindings', {'merged' : 0}],
            \ ['rafi/awesome-vim-colorschemes', {'merged' : 0}],
            \ ['MattesGroeger/vim-bookmarks', {'merged' : 0}],
            \ ]
" }}}

" SpaceVim Layers: {{{
SPLayer 'debug'
SPLayer 'default'
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
call SpaceVim#layers#load('VersionControl')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('checkers', {
    \ 'show_cursor_error' : 0,
    \ })
call SpaceVim#layers#load('tags')
call SpaceVim#layers#load('fzf')
call SpaceVim#layers#load('cscope')
" }}}

" Don't use sudo run vim
" SpaceVim disable the annoying `indentLine` plugin. #589
" let g:indentLine_conceallevel = 0
" let g:indentLine_concealcursor = 'nc'
" let g:indentLine_setConceal = 0
" let g:indentLine_enabled = 0
" let g:indentLine_setColors = 0
