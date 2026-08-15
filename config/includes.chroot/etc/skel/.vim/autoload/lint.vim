" =====================================================================
"
" Lint and LSP
"
" Author: OctHe
" Copyright (C)
"
" =====================================================================

function! lint#Vista(plugin_dir)

  if empty(globpath(a:plugin_dir, 'vista.vim/plugin/vista.vim'))
    return
  endif

  let g:vista_sidebar_width = 50

  nnoremap <silent> <Leader>T :Vista!!<CR>

endfunction

function! lint#EasyAlign(plugin_dir)

  if empty(globpath(a:plugin_dir, 'vim-easy-align/plugin/easy_align.vim'))
    return
  endif

  " Start interactive EasyAlign in visual mode (e.g. vipga)
  vmap ga <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

endfunction

function! lint#ALE(plugin_dir)

  if empty(globpath(a:plugin_dir, 'ale/plugin/ale.vim'))
    return
  endif

  " flake8 contains Pyflakes, pycodestyle, and McCabe
  let g:ale_linters = {
        \   'python': ['mypy', 'flake8'],
        \   'spec': ['rpmlint'],
        \ }

  " Options for mypy
  let l:venv_dir = system('which python')
  let g:ale_python_mypy_options = trim('--python-executable ' .. l:venv_dir)

  " Autopep8 and Autoflake are based on pycodestyle and Pyflakes, respectively
  let g:ale_fixers = {
        \ 'python': ['isort', 'yapf', 'autopep8', 'autoflake', 'remove_trailing_lines']
        \}

endfunction

" vim: set sw=2 sts=2 et fdm=marker:
