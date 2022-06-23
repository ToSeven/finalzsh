source ~/.zplug/init.zsh

zplug "romkatv/powerlevel10k", as:theme
zplug "zsh-users/zsh-autosuggestions"
zplug "softmoth/zsh-vim-mode"
zplug "zsh-users/zsh-history-substring-search"
zplug "Aloxaf/fzf-tab"
zplug "skywind3000/z.lua"

# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/sudo",   from:oh-my-zsh
zplug "plugins/extract",   from:oh-my-zsh

# Load if "if" tag returns true
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# Can manage local plugins
zplug "~/.zsh", from:local


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# 补全快捷键重设
bindkey ',' autosuggest-accept

