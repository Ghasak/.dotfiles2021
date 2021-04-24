"==============================================================================
"
" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
"   ___           __ _        ___ _ _
"  / __|___ _ _  / _(_)__ _  | __(_) |___
" | (__/ _ \ ' \|  _| / _` |_| _|| | / -_)
"  \___\___/_||_|_| |_\__, (_)_| |_|_\___|
"
"==============================================================================
" Original Setting
"
let loaded_matchparen=1 " Don't load matchit.vim (paren/bracket matching)
set noshowmatch         " Don't match parentheses/brackets
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/topA
set noswapfile

"let html_no_rendering=1 " Don't render italic, bold, links in HTML
map <F2> a<C-R>=strftime("%c")<CR><Esc>
"==============================================================================

"source $HOME/.config/nvim/modules/myPackageManager.vim
source $HOME/.config/nvim/modules/myVundlePackageManager.vim
source $HOME/.config/nvim/modules/keysMappingConfigandUtilities.vim

" Setting obtained from Crhis@Machine
source $HOME/.config/nvim/modules/usefulKeys.vim
source $HOME/.config/nvim/modules/mySetting.vim
" form Python and node env development
source $HOME/.config/nvim/modules/virtualEnvForPyConfig.vim

"==============================================================================
"                       Advanced Setting
"==============================================================================
" Using Ranger
source $HOME/.config/nvim/modules/mySpecialPlugin/myRanger.vim
" CheatSheet for Programming, offer a lot of flexibilities.
"source $HOME/.config/nvim/modules/mySpecialPlugin/myProgrammingCheatSheet.vim
" Float terminal for development
source $HOME/.config/nvim/modules/mySpecialPlugin/myFloatingTerm.vim
" Go to definition
source $HOME/.config/nvim/modules/mySpecialScripts/automaticallyUpdateyourFile.vim
"Currently has a problem that I couldn't fixed
"source $HOME/.config/nvim/modules/mySpecialScripts/myGoToDefiniton.vim
"source $HOME/.config/nvim/modules/mySpecialPlugin/myVimWhichKey.vim
" This is my Coc configuration include all the necessary tools that I need
source $HOME/.config/nvim/modules/mySpecialPlugin/myCOCConfig.vim
" Wrapper for some useful commands
source $HOME/.config/nvim/modules/mySpecialScripts/myWrapperCommands.vim
" Comment and uncomment your code
source $HOME/.config/nvim/modules/mySpecialScripts/myCommentsAndUncomments.vim
"source $HOME/.config/nvim/modules/mySpecialScripts/myGoToDefiniton.vim
" About regural expression
source $HOME/.config/nvim/modules/mySpecialScripts/myRegularExpressionScript.vim
" About Ctr+P Plugin Configurations
source $HOME/.config/nvim/modules/mySpecialPlugin/myCtrPConfig.vim
" About Telescope Configurations
source $HOME/.config/nvim/modules/mySpecialPlugin/myTelescope.vim
" About spell Checking &Translator and dictionary correction
source $HOME/.config/nvim/modules/mySpecialPlugin/mySpellChecking.vim
" Undo tree to show all things you have created and navigate in between
source $HOME/.config/nvim/modules/mySpecialPlugin/myUndoTreeConfig.vim
" Codi configuration
source $HOME/.config/nvim/modules/mySpecialPlugin/myCodiConfig.vim
" Coc-Explorer better than NerdTree
source $HOME/.config/nvim/modules/mySpecialPlugin/myCocExplorer.vim

" Adding indent Line for python to see the indentation
" based on Plugin 'Yggdroot/indentLine'
source $HOME/.config/nvim/modules/mySpecialPlugin/myIndentLine.vim
" Addding the markdown viewer based on Glow command
source $HOME/.config/nvim/modules/mySpecialPlugin/myMarkDownBetterViewer.vim
" Configuration my JupyterNotebook
source $HOME/.config/nvim/modules/mySpecialPlugin/myJupyterPlugConfig.vim

