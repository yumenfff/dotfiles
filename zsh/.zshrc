
# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# ====================== Environment & PATH ======================
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
)

source $ZSH/oh-my-zsh.sh

# ====================== Custom Configs ======================
# zsh-vi-mode installed with brew
# source "/opt/homebrew/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh"

#============ Default zsh vi mode ===========
# set -o vi 

#============ Editors ===========
export EDITOR=nvim
export VISUAL=nvim

# ================ Initializers and Sources ==============
eval "$(gdircolors)"

# starship 
eval "$(starship init zsh)"

# ================= ALIAS ===================
alias c="clear"
alias e="exit"
alias f="fastfetch"

# Next level ls (options:  --no-filesize --no-time --no-permissions)
alias l="eza --no-filesize --long --color=always --icons=always --no-user"
alias ll="eza --no-filesize --long --color=always --icons=always --no-user" 
alias la="eza --no-filesize --long --all --color=always --icons=always --no-user"

# tree
alias tree="tree -L 3 -a -I '.git' --charset X "
alias dtree="tree -L 3 -a -d -I '.git' --charset X "

# git aliases
alias g="git"
alias ga="git add ."
alias gs="git status -s"
alias gc='git commit -m'

# lazygit
alias lg="lazygit"

echo -ne '\e[6 q'

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
