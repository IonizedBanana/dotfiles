# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/home/banana/.local/bin
export PATH=$PATH:/home/banana/.spicetify
export GTK_USE_PORTAL=1

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 2

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize colored-man-pages sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconf="nvim ~/.zshrc"
 alias niriconf="nvim ~/.config/niri/config.kdl"
 alias todo="nvim ~/.todo.md"
 alias //="cd ~/.config"
 alias waybarconf="nvim ~/.config/waybar/config.jsonc"
 alias waybarcat="cat ~/.config/waybar/config.jsonc > ~/.config/waybar/config"
 alias sshban="ssh banana@192.168.1.118"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias swap="cd ~/.local/state/nvim/swap//"
alias disconnect="iwctl station wlan0 disconnect"
alias fo="~/.scripts/obsidian-fixer.sh"
alias hotspot="iwctl station wlan0 scan && iwctl station wlan0 disconnect && iwctl station wlan0 connect \"myhotspotssid\""
alias neofetch="fastfetch"
alias cd="z"
alias wifi="iwctl station wlan0"
alias pacin="sudo pacman -S --noconfirm"
alias pacre="sudo pacman -Rns --noconfirm"
alias yain="yay -S --noconfirm"
alias yare="yay -Rns --noconfirm"
alias upgrade="sudo pacman -Syu --noconfirm && yay -Syu --noconfirm"
# oh my posh
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config ~/.ohmyposh/themes/catppuccin_mocha.omp.json)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
