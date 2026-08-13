" =====================================================================
"
" Let code looks better
"
" Author: OctHe
" Copyright (C)
"
" =====================================================================

function! view#Goyo(plugin_dir)
  if empty(globpath(a:plugin_dir, 'goyo.vim/plugin/goyo.vim'))
    return
  endif

  nnoremap <Leader>wg :Goyo<CR>

endfunction

function! view#Limelight(plugin_dir)
  if empty(globpath(a:plugin_dir, 'limelight.vim/plugin/limelight.vim'))
    return
  endif

  nnoremap <Leader>wl :Limelight!!<CR>

endfunction

function! view#Whichkey(plugin_dir)

  if empty(globpath(a:plugin_dir, 'vim-which-key/plugin/which_key.vim'))
    return
  endif

  let g:which_key_map = {}
  let g:which_key_map.f = {
        \ 'name': '+find',
        \ 'b': 'buffer',
        \ 'c': 'color',
        \ 'f': 'file',
        \ 'g': 'Grepper',
        \ 'h': 'history',
        \ 'i': 'git files',
        \ 't': 'tags',
        \ 'w': 'windows',
        \ }
  let g:which_key_map.g = {
        \ 'name': '+git',
        \ 'b': 'blame',
        \ 'd': 'diff',
        \ 's': 'status',
        \ }
  let g:which_key_map.h = {
        \ 'name': '+help',
        \ 'm': 'mapping',
        \ }
  let g:which_key_map.m = {
        \ 'name': '+multiple cursor',
        \ 'a': 'select all words',
        \ 'c': 'start a word',
        \ }
  let g:which_key_map.t = {
        \ 'name': '+terminal',
        \ 'N': 'new term',
        \ 'n': 'next term',
        \ 'k': 'kill term',
        \ 'p': 'previous term',
        \ 't': 'toggle term',
        \ }
  let g:which_key_map.w = {
        \ 'name': '+writing',
        \ 'g': 'goyo',
        \ 'l': 'limelight',
        \ }
  call which_key#register('<Space>', "g:which_key_map")

  nnoremap <silent> <Leader> :<c-u>WhichKey '<Leader>'<CR>
  vnoremap <silent> <Leader> :<c-u>WhichKeyVisual '<Leader>'<CR>
  nnoremap <silent> <LocalLeader> :<c-u>WhichKey '<LocalLeader>'<CR>
  vnoremap <silent> <LocalLeader> :<c-u>WhichKeyVisual '<LocalLeader>'<CR>

  nnoremap <silent> g :<c-u>WhichKey 'g'<CR>
  vnoremap <silent> g :<c-u>WhichKeyVisual 'g'<CR>

endfunction

function! view#Rainbow(plugin_dir)

  if empty(globpath(a:plugin_dir, 'rainbow/plugin/rainbow_main.vim'))
    return
  endif
  " This variable must be defined to use rainbow.
  " Set to 0 to enable it later via :RainbowToggle
  let g:rainbow_active = 1

endfunction

" vim: set sw=2 sts=2 et fdm=marker:
