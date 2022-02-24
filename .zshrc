# ###########################################
#
#   ███████╗███████╗██╗  ██╗██████╗  ██████╗
#   ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#     ███╔╝ ███████╗███████║██████╔╝██║
#    ███╔╝  ╚════██║██╔══██║██╔══██╗██║
#██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#  ___           __ _           __ _ _
# / __|___ _ _  / _(_)__ _     / _(_) |___
#| (__/ _ \ ' \|  _| / _` |_  |  _| | / -_)
# \___\___/_||_|_| |_\__, (_) |_| |_|_\___|
#                    |___/
# ###########################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
export POWERLEVEL9K_INSTANT_PROMPT=quiet
export POWERLEVEL9K_INSTANT_PROMPT=off
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ghasak.ibrahim/.oh-my-zsh"
source $HOME/.zshrc_prompt
source $HOME/.aliases
source $HOME/.ey_project_dirs

####################################################
#                OpenAI API Key
#         using openAI with coding (nvim)
####################################################
# veryfiy with echo "${OPENAI_API_KEY}"
source $HOME/.openAI_API_key

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         bundler
         dotenv
         osx
         rake
         rbenv
         ruby
         npm # you added this)
         )
# Remember the sequence of these plugins

# AutoJump
#plugins=(git gitignore autojump jira command-not-found zsh-syntax-highlighting)
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
plugins=(zsh-syntax-highlighting)
plugins=(autojump)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# ---------------------------------------------
#      Necessary Tools and configurations
# ---------------------------------------------
export NVM_DIR="/Users/ghasak/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#*************************************************************************
#
#  GH-TERM CONFIDENTIAL
#  __________________
#
#   [2002] - [2007] Adobe Systems Incorporated
#   All Rights Reserved.
#
#  NOTICE:  All information contained herein is, and remains
#  the property of the author : G
#  The intellectual and technical concepts contained
#  herein are proprietary to G
#  and its suppliers are protected by copyright law.
#  Dissemination of this information or reproduction of this material
#  is strictly forbidden unless prior written permission is obtained
#  from G.
#*************************************************************************
#export HISTFILE=~/.history_zsh # This doesnt work with hstr
export HISTFILE=~/.zsh_history
export MYNAME
export LESS='-M'
export HISTSIZE=10000    # Default 500
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p ' # using strftime format
#export HISTTIMEFORMAT="%d/%m/%y %T "  # for e.g. “29/02/99 23:59:59”
#export HISTTIMEFORMAT="%F %T "        # for e.g. “1999-02-29 23:59:59”
export HISTCONTROL=ignoreboth            # ignoredups+ ignorespace
export HISTIGNORE="history:pwd:exit:df:df:ls:ls -la:ll"
alias ll='ls -lahG'
alias ctree='colorls --tree'
alias lsd='colorls -lA --sd'
# To make the history format working with zsh use:
alias history='history -i'

# New way to show the background you will need to follow
# https://drasite.com/blog/Pimp%20my%20terminal
#alias lsd='lsd -la'
alias hist='history'
alias home='cd ~'
#alias up='cd ..'
#figlet -f speed "Ghsaak"  |boxes | lolcat #-a -d $time_var
#figlet -f small "at Home MBP13"  |boxes -d whirly | lolcat #-a -d $time_var
#neofetch | boxes -d whirly
#figlet -f small "PersonalComputer"  |boxes | lolcat
#

function WelcomeMessage(){

      time_var=1
      echo -n "Uptime: "; uptime | lolcat #-a -d $time_var
      echo ""
      echo -n; cal
      echo""
      MYNAME='Ghasak Ibrahim'
      OPTIONX=$(echo $((1 + $RANDOM % 10)))

      FONTSTYLE=""

      if [[ OPTIONX -gt 5 ]]; then
        FONTSTYLE="3d"
      else
        FONTSTYLE="ANSI Shadow"
      fi
      # DEBUGGING fontStyle: echo "FONTSTYLE : $FONTSTYLE OPTION : $OPTIONX"
      figlet -f $FONTSTYLE "Ghasak" | lolcat #| pv --quiet --line-mode --rate-limit 200
      figlet -f $FONTSTYLE "@MBP-13" | lolcat

}

CHECKT_IF_ITERM_WAS_RUNNING=$(ps aux | grep iterm2 | wc -l)
if [ $CHECKT_IF_ITERM_WAS_RUNNING -gt 1 ]; then
  echo ""
else
  WelcomeMessage

fi
#
#============================================================================
#                   COLORING The MAN-Page
#============================================================================
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#============================================================================
#                   Useful Functions and Utilities
#============================================================================
find() {
    if [ $# = 1 ]
    then
        command find . -iname "*$@*"
    else
        command find "$@"
    fi
}
# You need to install <bat> using brew install bat
batdiff() {
    git diff --name-only --diff-filter=d | xargs bat --diff
}

#============================================================================
#       Configuration nvim
#============================================================================

alias vim='nvim'
export EDITOR=vim   # Using NANO:/usr/bin/nano
export VISUAL=vim


#============================================================================
    # New Features from Natelandau .bash_profile
#============================================================================
#  ---------------------------------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#
#  Sections:
#  1.   Environment Configuration
#  2.   Make Terminal Better (remapping defaults and adding functionality)
#  3.   File and Folder Management
#  4.   Searching
#  5.   Process Management
#  6.   Networking
#  7.   System Operations & Information
#  8.   Web Development
#  9.   Reminders & Notes
#
#  ---------------------------------------------------------------------------
#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------
#   Change Prompt
#   ------------------------------------------------------------
#export PS1="________________________________________________________________________________"
#export PS2="| => "
#   Set Paths
#   ------------------------------------------------------------
# export PATH="$PATH:/usr/local/bin/"
# export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
export BLOCKSIZE=1k
#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=ExFxBxDxCxegedabagacad
#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
#cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='sublime'                        # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -a '                      # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mkndir () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
#   --------------------------------------------------------------------
mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }
#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }
#   -------------------------------
#   3.  FILE AND FOLDER MANAGEMENT
#   -------------------------------
zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)
#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
# cdf () {
#         currFolderPath=$( /usr/bin/osascript <<b
#             tell application "Finder"
#                 try
#             set currFolder to (folder of the front window as alias)
#                 on error
#             set currFolder to (path to desktop folder as alias)
#                 end try
#                 POSIX path of currFolder
#             end tell
# EOT
#         )
# echo "cd to \"$currFolderPath\""
# cd "$currFolderPath"
# }

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2)   tar xjf $1     ;;
*.tar.gz)    tar xzf $1     ;;
*.bz2)       bunzip2 $1     ;;
*.rar)       unrar e $1     ;;
*.gz)        gunzip $1      ;;
*.tar)       tar xf $1      ;;
*.tbz2)      tar xjf $1     ;;
*.tgz)       tar xzf $1     ;;
*.zip)       unzip $1       ;;
*.Z)         uncompress $1  ;;
*.7z)        7z x $1        ;;
*)     echo "'$1' cannot be extracted via extract()" ;;
esac
else
echo "'$1' is not a valid file"
fi
    }
#   ---------------------------
#   4.  SEARCHING
#   ---------------------------
alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string
#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }
#   ---------------------------
#   5.  PROCESS MANAGEMENT
#   ---------------------------
#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
findPid () { lsof -t -c "$@" ; }
#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
alias topForever='top -l 9999999 -s 10 -o cpu'
#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
alias ttop="top -R -F -s 10 -o rsize"
#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }
#   ---------------------------
#   6.  NETWORKING
#   ---------------------------
alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
ii() {
echo -e "\nYou are logged on ${RED}$HOST"
echo -e "\nAdditionnal information:$NC " ; uname -a
echo -e "\n${RED}Users logged on:$NC " ; w -h
echo -e "\n${RED}Current date :$NC " ; date
echo -e "\n${RED}Machine stats :$NC " ; uptime
echo -e "\n${RED}Current network location :$NC " ; scselect
echo -e "\n${RED}Public facing IP Address :$NC " ;myip
#echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
echo
    }
#   ---------------------------------------
#   7.  SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------
alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user
#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanupts="find . -type f -name 'typescript' -ls -delete"
#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
#    screensaverDesktop: Run a screensaver on the Desktop
#   -----------------------------------------------------------------------------------
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'
#   ---------------------------------------
#   8.  WEB DEVELOPMENT
#   ---------------------------------------
alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='sudo edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page
#   httpDebug:  Download a web page and show info on what took time
#   -------------------------------------------------------------------
httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }
#   ---------------------------------------
#   9.  REMINDERS & NOTES
#   ---------------------------------------
#   remove_disk: spin down unneeded disk
#   ---------------------------------------
#   diskutil eject /dev/disk1s3
#   to change the password on an encrypted disk image:
#   ---------------------------------------
#   hdiutil chpass /path/to/the/diskimage
#   to mount a read-only disk image as read-write:
#   ---------------------------------------
#   hdiutil attach example.dmg -shadow /tmp/example.shadow -noverify
#   mounting a removable drive (of type msdos or hfs)
#   ---------------------------------------
#   mkdir /Volumes/Foo
#   ls /dev/disk*   to find out the device to use in the mount command)
#   mount -t msdos /dev/disk1s1 /Volumes/Foo
#   mount -t hfs /dev/disk1s1 /Volumes/Foo
#   to create a file of a given size: /usr/sbin/mkfile or /usr/bin/hdiutil
#   ---------------------------------------
#   e.g.: mkfile 10m 10MB.dat
#   e.g.: hdiutil create -size 10m 10MB.dmg
#   the above create files that are almost all zeros - if random bytes are desired
#   then use: ~/Dev/Perl/randBytes 1048576 > 10MB.dat
#============================================================================
#           Run Ipython from the virtual Env.   - Added on Thu Dec 19th
#============================================================================
alias ipy="python3 -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

#============================================================================
#       For installting the fuck to correct your formula
#============================================================================
eval $(thefuck --alias)
#============================================================================
#alias python='/usr/bin/python'
#alias python3='/Users/ghasak.ibrahim/opt/anaconda3/bin/python'

##################################################
#       This function is working with ranger
#       using Capital (Q) to exit ranger to
#       the last specified directory in ranger.
#       - Added Wed. Feb. 24th 2021
##################################################
function ranger-cd {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )

    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}

alias ranger=ranger-cd

##################################################
#       Direnv Hoocking to zsh
##################################################
eval "$(direnv hook zsh)"

##################################################
#    Any thing added here is automated by
#            an app or service
##################################################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



###################################################
#        For mtr utility adding to the path
###################################################
PATH=$PATH:/usr/local/sbin

###################################################
#       Interactive Terminal for Git
###################################################
# source <(curl -sSL git.io/forgit)
#
if [ -f ~/.GScript/forgitScript.sh ]; then

    source ~/.GScript/forgitScript.sh

else

    print "404: ~/.GScript/forgitScript.sh is not found."
    print "For more details see :ttps://github.com/wfxr/forgit"
    print "I will try to fetch it for you ... "
    touch  ~/.GScript/forgitScript.sh
    curl -sSL git.io/forgit >> ~/.GScript/forgitScript.sh
    print "Yes, its available ... "
    head ~/.GScript/forgitScript.sh | lolcat
    print "Now Try again .. Restart your terminal "

fi
###################################################
#           Predicting the nextword
#           also working for coc-nextword
#      https://github.com/high-moctane/nextword
###################################################
export NEXTWORD_DATA_PATH=$HOME/.nextword-data-large
export PATH="$HOME/nextword/:$PATH"

###################################################
#       using fzf with reg
#       https://irian.to/blogs/vim-fzf/
###################################################

#if type rg &> /dev/null; then
#   export FZF_DEFAULT_COMMAND='rg --files'
#  export FZF_DEFAULT_OPTS='-m --height 50% --border'

#fi

###################################################
#       Autheticate all my scripts thata
#       I developed in the shell
###################################################
export PATH="$HOME/.GScript/:$PATH"
export PATH="$HOME/.GScript/utility_functions:$PATH"
###################################################
#       Configurtion of Neovid
#       https://github.com/Kethku/neovide
###################################################
export PATH="$HOME/neovide/target/release/:$PATH"

###################################################
#       Confgurations for the yabai
###################################################
export PATH="$HOME/.config/yabai/:$PATH"
export PATH="$HOME/.config/skhd/:$PATH"

###################################################
#       Google Driver for Seleinum
#       Web Scraping and Automation
###################################################
export PATH="$HOME/.myServices/:$PATH"

###################################################
#       Project Template Builder
#    Script to autoamte python project template
###################################################
export PATH="$HOME/.GScript/project_template_builder/:$PATH"

###################################################
#             gitstatus from
#     the creator of the powerlevel10k
###################################################
#source /usr/local/opt/gitstatus/gitstatus.prompt.zsh
#
###################################################
#           HISTORY SEARCHING COMMAND
#           using: mcfly
###################################################
#eval "$(mcfly init zsh)"

###################################################
# HSTR configuration - add this to ~/.zshrc
#       Following the configuration here
#       Source:
#       http://dvorka.github.io/hstr/CONFIGURATION.html
###################################################
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

###################################################
#        Add Heskall to your path dir
###################################################
PATH=$PATH:/usr/local/sbin
#PATH=$PATH:/Users/ghasak.ibrahim/.local/bin
PATH=$PATH:/$HOME/.local/bin

###################################################
#   docui - TUI Client for Docker Written in Go
#   Source: https://github.com/skanehira/docui
###################################################
export LC_CTYPE=en_US.UTF-8
export TERM=xterm-256color

###################################################
#           CLICK-CLICK For Mac
###################################################
export PATH="$HOME/.GScript/utility_functions/cliclick/:$PATH"

###################################################
#           mcfly for command history
###################################################
#eval "$(mcfly init zsh)"

###################################################
#         Nvim 5.0 Stable Release
###################################################
#export PATH="$HOME/dev/nvim-os64/bin/:$PATH"
#export PATH="$HOME/dev/nvim-os64/:$PATH"
#export PATH="/Users/ghasak.ibrahim/dev/nvim-osx64/bin/"
export PATH="$HOME/dev/bin/:$PATH"
###################################################
#             Lua Package Manager
###################################################
alias luamake=/Users/ghasak.ibrahim/.config/nvim/language_servers/lua-language-server/3rd/luamake/luamake
###################################################
###################################################
#            Curl Configurtion
#  If you need to have curl first in your PATH, run:
#    echo 'export PATH="/usr/local/opt/curl/bin:$PATH"' >> ~/.zshrc
#
#  For compilers to find curl you may need to set:
#    export LDFLAGS="-L/usr/local/opt/curl/lib"
#    export CPPFLAGS="-I/usr/local/opt/curl/include"
#
#  For pkg-config to find curl you may need to set:
#    export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"
###################################################
#export PATH="/usr/local/opt/curl/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/curl/lib"
#export CPPFLAGS="-I/usr/local/opt/curl/include"
#export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"
###################################################
#           Correct Cmake Path
###################################################
# export PATH="/usr/local/bin:$PATH"
###################################################
#     This is for pipenv error message
###################################################
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
###################################################
#           Anaconda Installation
###################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ghasak.ibrahim/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ghasak.ibrahim/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ghasak.ibrahim/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ghasak.ibrahim/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

###################################################
#          Local Postgresql
#                 V.14
# Located at: "/Applications/PostgreSQL 14/SQL Shell (psql).app"
# Data storage and command line: /Library/PostgreSQL/14/bin
###################################################
#export PATH="/Library/PostgreSQL/14/bin/:$PATH"
# Put the path of Postgresql at the end
export PATH="$PATH:/Library/PostgreSQL/14/bin/"
#export PATH="$PATH:/Library/PostgreSQL/14/bin/"

