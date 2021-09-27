# Neovim and init configurations (build v.01)

## Testing the speed of the neovim launching time.

Use the command `vim-startuptime` which will offer a quick calcuation of the launching time.
- For my MacBook I used the custome binary (prebuild) with `vim-startuptime_darwin_amd64.zip`
- [vim-startuptime website](https://github.com/rhysd/vim-startuptime)


This is the first thing to make for the current file.,
- Right now I am using a neovim build (5.0), build with the requirements shown here.

- [Neovim build from the source](https://github.com/neovim/neovim/wiki/Building-Neovim)
- plugin directory will be at same directory of our nvim, I have tried to change this directory, but it causes many problems. When you do a fresh installtion, try to delete the following two directories:
  - ~/.config/plugin
  - ~/.local/share/nvim

# Creating file or directory in vim without plugin

You can use the following,

### Formula

1. In the command prompt of `Nvim`, you can use the following configurations.

```sh
! cd /directory/direcotyr_2/direcotry_3
! mkdir <name>
! touch <name>.extention

```
2. Accessing the probet to open browser

```sh
!open -a "Safari" <link, e.g www.google.com>

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

## Highlight words  in vim with (f/t/F/T)
- [vim-eft plugin](https://github.com/hrsh7th/vim-eft)



## Launching time testing

```sh
─ ghasak.ibrahim   JPC02DW0YWML86 on ~/.config/nvim   
├─ﮧ    (38m|(main|樂4 )
╰綠﨡  vim-startuptime                                                                                                                                                                                                                                                                                                  祥:21ms  [   Sep 28, 2021-   12:42:51 AM]
Extra options: []
Measured: 10 times

Total Average: 22.435800 msec
Total Max:     24.060000 msec
Total Min:     20.174000 msec

  AVERAGE       MAX       MIN
------------------------------
11.569000 12.739000 10.341000: inits 1
 3.585200  4.335000  2.999000: loading plugins
 2.868600  3.374000  2.632000: shell init
 1.073000  1.277000  0.920000: sourcing vimrc file(s)
 0.409100  0.641000  0.355000: /usr/share/vim/vim82/plugin/netrwPlugin.vim
 0.329700  0.397000  0.292000: Termcap init
 0.240800  0.314000  0.198000: locale set
 0.240000  0.281000  0.225000: /usr/share/vim/vim82/plugin/logiPat.vim
 0.190900  0.226000  0.175000: /usr/share/vim/vim82/plugin/matchparen.vim
 0.180700  0.310000  0.152000: reading viminfo
 0.179600  0.208000  0.159000: /usr/share/vim/vim82/plugin/gzip.vim
 0.178100  0.230000  0.145000: $VIM/vimrc
 0.162300  0.217000  0.139000: /usr/share/vim/vim82/plugin/zipPlugin.vim
 0.128200  0.209000  0.108000: /usr/share/vim/vim82/plugin/vimballPlugin.vim
 0.126100  0.219000  0.105000: loading packages
 0.123800  0.177000  0.099000: /usr/share/vim/vim82/plugin/tohtml.vim
 0.120100  0.182000  0.085000: opening buffers
 0.114800  0.140000  0.102000: /usr/share/vim/vim82/plugin/tarPlugin.vim
 0.103400  0.109000  0.100000: init highlight
 0.099900  0.145000  0.075000: /usr/share/vim/vim82/plugin/getscriptPlugin.vim
 0.074000  0.078000  0.072000: Allocated generic buffers
 0.055400  0.072000  0.047000: $VIMRUNTIME/defaults.vim
 0.052900  0.113000  0.027000: /usr/share/vim/vim82/plugin/spellfile.vim
 0.044900  0.075000  0.034000: BufEnter autocommands
 0.034500  0.053000  0.029000: /usr/share/vim/vim82/plugin/manpager.vim
 0.033500  0.054000  0.028000: loading after plugins
 0.021400  0.041000  0.016000: /usr/share/vim/vim82/plugin/rrhelper.vim
 0.020800  0.028000  0.016000: setting raw mode
 0.017100  0.021000  0.015000: inits 2
 0.014200  0.018000  0.013000: parsing arguments
 0.009300  0.016000  0.007000: clearing screen
 0.008000  0.010000  0.006000: start termcap
 0.006500  0.008000  0.005000: --- VIM STARTING ---
 0.005700  0.011000  0.005000: window checked
 0.005700  0.009000  0.005000: inits 3
 0.004500  0.005000  0.004000: clipboard setup
 0.003300  0.005000  0.003000: editing files in windows
 0.000800  0.001000  0.000000: expanding arguments

```
