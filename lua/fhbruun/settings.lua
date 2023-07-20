vim.cmd([[
  augroup my_compiler_settings
    autocmd!
    autocmd FileType c setlocal makeprg=gcc\ -Wall\ -o\ %:r\ %
  augroup END
]])
