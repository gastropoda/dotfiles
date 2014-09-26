augroup artm
  au!
  " Recall last location in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif
  au BufReadPost COMMIT_EDITMSG norm ggi

  au BufWinLeave * silent! mkview
  au BufWinEnter * silent! loadview

  " disable slow syntax highlighting on large files
  au BufWinEnter *.md if line2byte(line("$") + 1) > 3000 | syntax clear | endif

  " solve slim plugin problem
  autocmd BufNewFile,BufRead *.slim set syntax=slim|set ft=slim

  autocmd VimEnter * if argc() < 1 | NERDTree | endif
augroup END

