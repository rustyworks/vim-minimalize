" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()

" Strip carriage return (to create carriage return press
" ctrl+v ctrl+m in insert mode)
function! <SID>StripTrailingCarriageReturn()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingCarriageReturn call <SID>StripTrailingCarriageReturn()


function! <SID>CopyCurrentFilePath()
  let @+=@%
endfunction
command! CopyCurrentFilePath call <SID>CopyCurrentFilePath()

function! ContextCompletion()
  let l:line_content = getline('.')
  let l:col = col('.')
  let l:prev_char = l:line_content[l:col - 2]

  if pumvisible()
    return "\<C-n>"
  elseif len(trim(l:line_content)) > 0 && matchstr(l:prev_char, '\s') == ''
    return "\<C-p>"
  else
    return "\<Tab>"
  endif
endfunction

function! ReversedContextCompletion()
  let l:line_content = getline('.')
  let l:col = col('.')
  let l:prev_char = l:line_content[l:col - 2]

  let l:line_content = getline('.')
  if pumvisible()
    return "\<C-p>"
  elseif len(trim(l:line_content)) > 0 && matchstr(l:prev_char, '\s') == ''
    return "\<C-n>"
  else
    return "\<Tab>"
  endif
endfunction
