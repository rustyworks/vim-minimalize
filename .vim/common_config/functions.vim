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


" Copy current file path
" https://vi.stackexchange.com/questions/3686/copy-the-full-path-of-current-buffer-to-clipboard
" https://stackoverflow.com/questions/916875/yank-file-name-path-of-current-buffer-in-vim
function! <SID>CopyCurrentFilePath()
  let uname = substitute(system('uname'),'\n','','')
  if uname == 'Linux'
    let lines = readfile("/proc/version")
    if lines[0] =~ "Microsoft"
      call system('win32yank.exe -i --crlf', expand('%'))
    else
      let @+ = expand('%')
    endif
  endif
endfunction
command! CopyCurrentFilePath call <SID>CopyCurrentFilePath()

function! ContextCompletion()
  let l:line_content = getline('.')
  let l:col = col('.')
  let l:prev_char = l:line_content[l:col - 2]
  let l:next_char = l:line_content[l:col - 1]

  if len(trim(l:line_content)) > 0 && (matchstr(l:prev_char, '\s') == '' && (l:next_char == '' || l:next_char == ' '))
    return "\<C-p>"
  else
    return "\<Tab>"
  endif
endfunction

function! ReversedContextCompletion()
  let l:line_content = getline('.')
  let l:col = col('.')
  let l:prev_char = l:line_content[l:col - 2]
  let l:next_char = l:line_content[l:col - 1]

  if len(trim(l:line_content)) > 0 && (matchstr(l:prev_char, '\s') == '' && (l:next_char == '' || l:next_char == ' '))
    return "\<C-n>"
  else
    return "\<Tab>"
  endif
endfunction

function! <SID>ToggleFolding()
  if !exists("b:fold_all")
      let b:fold_all = 0
  endif

  if b:fold_all == 0
    let b:fold_all = 1
    execute "normal! zM"
  else
    let b:fold_all = 0
    execute "normal! zR"
  endif

  echo b:fold_all
endfunction
command! ToggleFolding call <SID>ToggleFolding()
