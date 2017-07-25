# Setup fzf
# ---------
if [[ ! "$PATH" == */home/blockcat/.fzf/bin* ]]; then
  export PATH="$PATH:/home/blockcat/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/blockcat/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/blockcat/.fzf/shell/key-bindings.zsh"

