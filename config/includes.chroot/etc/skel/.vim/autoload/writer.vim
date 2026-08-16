" =====================================================================
"
" Rethinking vim for writing
"
" Author: OctHe
" Copyright (C)
"
" =====================================================================

function! writer#Pencil(plugin_dir)
  if empty(globpath(a:plugin_dir, 'vim-pencil/plugin/pencil.vim'))
    return
  endif

  nnoremap <Leader>wp :TogglePencil<CR>

endfunction

function! writer#Goyo(plugin_dir)
  if empty(globpath(a:plugin_dir, 'goyo.vim/plugin/goyo.vim'))
    return
  endif

  nnoremap <Leader>wg :Goyo<CR>

endfunction

function! writer#Limelight(plugin_dir)
  if empty(globpath(a:plugin_dir, 'limelight.vim/plugin/limelight.vim'))
    return
  endif

  nnoremap <Leader>wl :Limelight!!<CR>

endfunction

" vim: set sw=2 sts=2 et fdm=marker:
