
# ====================== Environment & PATH ======================
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

typeset -U PATH
export PATH="$HOME/.local/bin:$PATH"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
export TMUX_CONF="$HOME/.config/tmux/tmux.conf" # tmux
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml" # starship

# ====================== Oh My Zsh ======================
# path on mac : ~/.oh-my-zsh/custom/plugins/
# then run git clone <link in the to plugin repo>
plugins=(
    git 
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# ====================== Custom Configs ======================
# function zvm_config() {
#   ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
# }

# zsh-vi-mode installed with brew
# source "/opt/homebrew/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh"

#============ Default zsh vi mode ===========
# set -o vi 

#============ Editors ===========
export EDITOR=nvim
export VISUAL=nvim

# ================ Initializers and Sources ==============
# starship 
eval "$(starship init zsh)"

# ================= ALIAS ===================
alias c="clear"
alias e="exit"
alias f="fastfetch"
alias v="vagrant"
alias fire="gh yule-log"

# Next level ls (options:  --no-filesize --no-time --no-permissions)
alias l="eza --no-filesize --long --color=always --icons=always --no-user"
alias ll="eza --no-filesize --long --color=always --icons=always --no-user" 
alias la="eza --no-filesize --long --all --color=always --icons=always --no-user"

# tree
alias tree='eza --tree --icons --level=3 --color=always'

# git aliases
alias g="git"
alias ga="git add ."
alias gs="git status -s"
alias gc='git commit -m'

# lazygit
alias lg="lazygit"

# Start tmux on startup only if no client is already attached
# if [[ -z "$TMUX" ]] && command -v tmux &>/dev/null; then
#     if tmux ls &>/dev/null; then
#         last_session=$(tmux list-sessions -F '#{session_last_attached} #{session_name}' | sort -rn | head -n1 | cut -d' ' -f2-)
#         if [[ -z "$(tmux list-clients -t "$last_session" 2>/dev/null)" ]]; then
#             tmux attach -t "$last_session"
#         fi
#     else
#         tmux new -s main
#     fi
# fi

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/fff.f.f.f.f.f.f.f/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
