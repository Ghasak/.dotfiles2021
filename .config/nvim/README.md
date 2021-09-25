# Neovim and init configurations (build v.01)

## Testing the speed of the neovim launching time.

Use the command `vim-startuptime` which will offer a quick calcuation of the launching time.
- For my MacBook I used the custome binary (prebuild) with `vim-startuptime_darwin_amd64.zip`
- [vim-startuptime website](https://github.com/rhysd/vim-startuptime)


This is the first thing to make for the current file.,
- Right now I am using a neovim build (5.0), build with the requirements shown here.

- [Neovim build from the source](https://github.com/neovim/neovim/wiki/Building-Neovim)

# Creating file or directory in vim without plugin

You can use the following,

### Formula

In the command prompt of `Nvim`, you can use the following configurations.

```sh
! cd /directory/direcotyr_2/direcotry_3
! mkdir <name>
! touch <name>.extention

```

## Changing the nvim-clap theme color

- Requirements for the configure the theme of nvim-clap, and  call the them using
```sh
vim.cmd[[let g:clap_theme = 'material_design_dark']]
```

- [x] ~/.local/share/nvim/site/pack/packer/start/vim-clap/autoload/clap/themes/material_design_dark.vim.modified.now.used
- Simply changed the color of the background to fit my terminal.

```sh

" Author: liuchengxu <xuliuchengxlc@gmail.com>
" Description: Clap theme based on the material_design_dark theme."

let s:save_cpo = &cpoptions
set cpoptions&vim

let s:palette = {}

let s:palette.display = { 'ctermbg': '235', 'guibg': '#424242' }

" Let ClapInput, ClapSpinner and ClapSearchText use the same background.

let s:bg0 = { 'ctermbg': '60', 'guibg': '#424242' }
let s:palette.input = s:bg0
let s:palette.indicator = extend({ 'ctermfg': '238', 'guifg':'#676b83' }, s:bg0)
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg':'#ffe500', 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '195', 'guifg': '#CADFF3', 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

let s:palette.preview = { 'ctermbg': '238', 'guibg': '#424242' }

let s:palette.selected = { 'ctermfg': '81', 'guifg': '#5FD7d7', 'cterm': 'bold,underline', 'gui': 'bold,underline' }
let s:palette.current_selection = { 'ctermbg': '236', 'guibg': '#31364D', 'cterm': 'bold', 'gui': 'bold' }

let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': '#f2241f' }
let s:palette.current_selection_sign = s:palette.selected_sign

let g:clap#themes#material_design_dark#palette = s:palette

let &cpoptions = s:save_cpo
unlet s:save_cpo

```

## Spell checking

For spell checking I am using the 'kamykn/spelunker.vim', and mapped the (ZL and Zl) for checking the spelling.
this is less attractive compared to the nvim  spell checking from COC, Since I don't use coc anymore, I switched to this plugin instead.


## Fuzzy finding
One of the coolest feature I have created is to implement the fuzzy finder in lua to get the path
The mapping is located at lua/scripts/myCommandWrapper.lua , which will be triggered in insert mode  with (CTR-X, then CTRL-F)
it will automatically complete the path for your while you are searching for any specific word.
- [Idea got it fromm](https://vi.stackexchange.com/questions/34392/path-completion-with-fzf-from-absolute-path)
you will need the following plugins:

```shell
  use{'junegunn/fzf', run = "fzf#install()"}
  use{'junegunn/fzf.vim'}
```
- [FZY finder repository](https://github.com/junegunn/fzf.vim)

Commands
--------

| Command           | List                                                                                  |
| ---               | ---                                                                                   |
| `:Files [PATH]`   | Files (runs `$FZF_DEFAULT_COMMAND` if defined)                                        |
| `:GFiles [OPTS]`  | Git files (`git ls-files`)                                                            |
| `:GFiles?`        | Git files (`git status`)                                                              |
| `:Buffers`        | Open buffers                                                                          |
| `:Colors`         | Color schemes                                                                         |
| `:Ag [PATTERN]`   | [ag][ag] search result (`ALT-A` to select all, `ALT-D` to deselect all)               |
| `:Rg [PATTERN]`   | [rg][rg] search result (`ALT-A` to select all, `ALT-D` to deselect all)               |
| `:Lines [QUERY]`  | Lines in loaded buffers                                                               |
| `:BLines [QUERY]` | Lines in the current buffer                                                           |
| `:Tags [QUERY]`   | Tags in the project (`ctags -R`)                                                      |
| `:BTags [QUERY]`  | Tags in the current buffer                                                            |
| `:Marks`          | Marks                                                                                 |
| `:Windows`        | Windows                                                                               |
| `:Locate PATTERN` | `locate` command output                                                               |
| `:History`        | `v:oldfiles` and open buffers                                                         |
| `:History:`       | Command history                                                                       |
| `:History/`       | Search history                                                                        |
| `:Snippets`       | Snippets ([UltiSnips][us])                                                            |
| `:Commits`        | Git commits (requires [fugitive.vim][f])                                              |
| `:BCommits`       | Git commits for the current buffer; visual-select lines to track changes in the range |
| `:Commands`       | Commands                                                                              |
| `:Maps`           | Normal mode mappings                                                                  |
| `:Helptags`       | Help tags <sup id="a1">[1](#helptags)</sup>                                           |
| `:Filetypes`      | File types

## How to close your windows without affecting other buffers
You can use `Bdelete` we will map this to <leader>w, this will allow to close
the given window without closing all the other buffers.




