## Install

1. `git clone https://github.com/rustyworks/vim-minimalize.git`
2. `cd vim-config`
3. `./link_vim_only.sh` for vim user

## Reinstall plugin to the newest version

1. `:BundleClean`
2. `:BundleInstall`

## Needed 3rd party
1. ripgrep (apt install ripgrep) - not mandatory, already have `Grep` function
2. ctags (apt install universal-ctags)
3. fzf (apt install fzf) - not mandatory, ctrl-p will be the fallback

## Key mappings - leader = '\\'

* `<leader>b` - Fuzzy buffers open
* `<leader>c` - Strip trailing whitespace
* `<leader>C` - Strip trailing carriage return
* `<leader>d` - Delete opened buffers
* `<leader>g` - Open Nerdtree
* `<leader>G` - Open Nerdtree and find the file location
* `<leader>H` - Reset Nerdtree
* `<leader>I` - Reindent all
* `<leader>w` - Toggle line wrapping
* `<leader>r` - Copy path of current file
* `<leader>s` - Toggle spell check
* `<leader>t` - Fuzzy file finder
* `<leader>u` - Toggle Undotree
* `<leader>w` - Toggle word wrap
* `<leader>x` - Toggle context
* `<leader>z` - Toggle folding
* `<leader>.` - Toggle Tagbar
* `<leader><number>` - Change to opened tab number
* `<leader><spacebar>` - clear search highlighting
