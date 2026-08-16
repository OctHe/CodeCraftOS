" =====================================================================
"
" Autocompletion
"
" Author: OctHe
" Copyright (C)
"
" =====================================================================

function! autocompletor#Nerdcommenter(plugin_dir)

  if empty(globpath(a:plugin_dir, 'nerdcommenter/plugin/nerdcommenter.vim'))
    return
  endif

  let g:NERDSpaceDelims = 1
  let g:NERDRemoveExtraSpaces = 1

endfunction

function! autocompletor#VisualMulti(plugin_dir)

  if empty(globpath(a:plugin_dir, 'vim-visual-multi/plugin/visual-multi.vim'))
    return
  endif

  " Replace the default <C-N> since it comflicts with YankRing
  let g:VM_maps = {}
  let g:VM_maps['Find Under'] = '<Leader>m' " Replace <C-N>
  let g:VM_maps['Find Subword Under'] = '<Leader>m' " Replace visual <C-N>

endfunction

function! autocompletor#UltiSnips(plugin_dir)

  if empty(globpath(a:plugin_dir, 'ultisnips/plugin/UltiSnips.vim'))
    return
  endif

  " Trigger configuration. Change this to something other than <tab> if use one
  " of the following:
  " - https://github.com/Valloric/YouCompleteMe
  " - https://github.com/nvim-lua/completion-nvim
  let g:UltiSnipsExpandTrigger="<CR>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"

endfunction

function! autocompletor#YCM(plugin_dir)

  if empty(globpath(a:plugin_dir, 'YouCompleteMe/plugin/youcompleteme.vim'))
    return
  endif

  let g:ycm_show_diagnostics_ui = 0

  " Clear the YCM blacklist, so it works for all files
  let g:ycm_filetype_blacklist = {}

endfunction

" vim: set sw=2 sts=2 et fdm=marker:
