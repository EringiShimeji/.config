vim.cmd([[
let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END


]])

vim.keymap.set('n','<C-n>',':Fern . -drawer -toggle<CR>',{silent = true,noremap = true})

-- 下記の記述はtrash-cliを用いない場合にファイル等を削除する方法
-- ただし内部的には $ rm のため、原則使わない

-- function! s:fern_settings() abort
--   nmap <silent> <buffer> dd <Plug>(fern-action-remove)
-- endfunction

-- augroup fern-settings
--   autocmd!
--   autocmd FileType fern call s:fern_settings()
-- augroup END
