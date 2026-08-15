" =====================================================================
"
" Go to everywhere easily
"
" Author: OctHe
" Copyright (C)
"
" =====================================================================

function! navigator#Sneak(plugin_dir)

  if empty(globpath(a:plugin_dir, 'vim-sneak/plugin/sneak.vim'))
    return
  endif

  " 1-charactor sneak for enhanced f/F/t/T
  nmap f <Plug>Sneak_f
  nmap F <Plug>Sneak_F
  xmap f <Plug>Sneak_f
  xmap F <Plug>Sneak_F
  omap f <Plug>Sneak_f
  omap F <Plug>Sneak_F
  nmap t <Plug>Sneak_t
  nmap T <Plug>Sneak_T
  xmap t <Plug>Sneak_t
  xmap T <Plug>Sneak_T
  omap t <Plug>Sneak_t
  omap T <Plug>Sneak_T

endfunction

function! navigator#FZF(plugin_dir)
  if empty(globpath(a:plugin_dir, 'fzf.vim/plugin/fzf.vim'))
    return
  endif

  nnoremap <Leader>fb :Buffer<CR>
  nnoremap <Leader>fc :Colors<CR>
  nnoremap <Leader>ff :Files<CR>
  nnoremap <Leader>fi :GFiles<CR>
  nnoremap <Leader>fh :History<CR>
  nnoremap <Leader>ft :Tags<CR>
  nnoremap <Leader>fw :Windows<CR>

  vnoremap <Leader>fb :Buffer<CR>
  vnoremap <Leader>fc :Colors<CR>
  vnoremap <Leader>ff :Files<CR>
  vnoremap <Leader>fi :GFiles<CR>
  vnoremap <Leader>fh :History<CR>
  vnoremap <Leader>ft :Tags<CR>
  vnoremap <Leader>fw :Windows<CR>

endfunction

function! navigator#Undotree(plugin_dir)
  if empty(globpath(a:plugin_dir, 'undotree/plugin/undotree.vim'))
    return
  endif

  nnoremap <Leader>u :UndotreeToggle<CR>

endfunction

function! navigator#Grepper(plugin_dir)

  if empty(globpath(a:plugin_dir, 'vim-grepper/plugin/grepper.vim'))
    return
  endif

  noremap <Leader>fg :Grepper<CR>

endfunction

function! navigator#YankRing(plugin_dir)
  if empty(globpath(a:plugin_dir, 'YankRing.vim/plugin/yankring.vim'))
    return
  endif

  let g:yankring_history_dir = '$HOME/.cache/'

endfunction

" vim: set sw=2 sts=2 et fdm=marker:
