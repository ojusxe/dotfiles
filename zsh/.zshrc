# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="bira"

# Plugins
plugins=(git)

source "$ZSH/oh-my-zsh.sh"

# Better tab completion menu
zstyle ':completion:*' menu select

# When selecting an item from autocomplete menu, Enter should accept and run the command
bindkey -M menuselect '^M' .accept-line

# Load public aliases
[[ -f "$HOME/.config/zsh/aliases.zsh" ]] && source "$HOME/.config/zsh/aliases.zsh"

# Load private local config — do not commit this file
[[ -f "$HOME/.config/zsh/private.zsh" ]] && source "$HOME/.config/zsh/private.zsh"

# Ghostty shell integration for split cwd inheritance
if [[ -n "$GHOSTTY_RESOURCES_DIR" ]]; then
  source "$GHOSTTY_RESOURCES_DIR/shell-integration/zsh/ghostty-integration"
fi