## Install

1. `git clone https://github.com/rustyworks/vim-minimalize.git`
2. `cd vim-config`
3. `./link_vim_only.sh` for vim user

## Reinstall plugin

1. `:BundleClean` (if you have previously used this Neo Vim config)
2. `:BundleInstall` (This will clone and install all of the plugins from github.)

## Customizing

## Key mappings (remember case matters!)

* `<leader>w` - toggle line wrapping
* `<leader><spacebar>` - clear search highlighting

## CtrlP

Provides convenient ways to quickly reach the
buffer/file/command/bookmark/tag you want. CtrlP searches with the
fuzzy/partial pattern to which it converted an entered pattern.

* `<leader>t` - fuzzy find files
* `<leader>b` - fuzzy find open buffers
* `<leader>T` - use fuzzy finder to navigate via tags instead of built-in tag navigation
* `<C-j>` - open selected item in window in horizontal split
* `<C-k>` - open selected item in vertical split

## UndoTree

Awesome visual representation of `vim` undo tree.

**Customizations**

* `<leader>h` - Toggle gundo


## Tagbar

Navigating tags using CTags

* `<leader>.` - Toggle Tagbar

## T-Comment

TComment works like a toggle, i.e., it will comment out text that
contains uncommented lines, and it will remove comment markup for
already commented text (i.e. text that contains no uncommented lines).

If the file-type is properly defined, TComment will figure out which
comment string to use. Otherwise you use |TCommentDefineType()| to
override the default choice.

TComment can properly handle an embedded syntax, e.g., ruby/python/perl
regions in vim scripts, HTML or JavaScript in php code etc.

* `gc{motion}` - Toggle comments (for small comments within one line the &filetype_inline style will be used, if defined)
* `gcc`        - Toggle comment for the current line
* `gC{motion}` - Comment region
* `gCc`        - Comment the current line

## Other keymapping configurations

You can check it in common_config/key_mappings.vim
