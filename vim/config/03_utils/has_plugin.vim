fu! HasPlugin(file)
  return globpath( &runtimepath, "plugin/" . a:file ) != ""
endfu

command! -nargs=1 StopUnlessHas :if !HasPlugin(<args>) | finish | endif
command! StopUnlessHavePlugin :if !HasPlugin(expand('<sfile>:t')) | finish | endif
