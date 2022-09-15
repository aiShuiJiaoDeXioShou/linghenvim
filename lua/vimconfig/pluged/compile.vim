func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
  elseif &filetype == 'cpp'
    exec "!g++ -ltensorflow % -o %<"
    exec "!gcc ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
  elseif &filetype == 'sh'
    exec "!%"
  elseif &filetype == 'python'
    exec "!python %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  elseif &filetype == 'go'
    exec "!go run %"
  endif
endfunc