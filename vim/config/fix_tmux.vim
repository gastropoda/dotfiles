if &term !~ '^screen' | finish | end

" tmux will send xterm-style keys when its xterm-keys option is on
exec "set <xUp>=\e[1;*A"
exec "set <xDown>=\e[1;*B"
exec "set <xRight>=\e[1;*C"
exec "set <xLeft>=\e[1;*D"
exec "set <PageUp>=\e[5;*~"
exec "set <PageDown>=\e[6;*~"
exec "set <xHome>=\e[1;*H"
exec "set <xEnd>=\e[1;*F"
" fix dragging inside tmux
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end
