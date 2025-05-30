" Figure out which type of hilighting to use for html.
fun! s:SelectHTML()
  let n = 1
  while n <= line("$")
    " check for jinja
    if getline(n) =~ '{{.*}}\|{%-\?\s*\(end.*\|extends\|block\|macro\|set\|if\|for\|include\|trans\)\>'
      set ft=jinja.html
      return
    endif
    let n = n + 1
  endwhile
endfun
autocmd BufNewFile,BufRead *.html,*.htm,*.nunjucks,*.nunjs,*.njk  call s:SelectHTML()
autocmd BufNewFile,BufRead *.jinja2,*.j2,*.jinja,*.tera set ft=jinja
