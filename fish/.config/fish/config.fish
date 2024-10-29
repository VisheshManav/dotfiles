if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/vishesh/miniconda3/bin/conda
    eval /home/vishesh/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/vishesh/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/vishesh/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/vishesh/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

set fish_greeting
conda activate ml
export PATH="$PATH:/opt/nvim-linux64/bin"
alias vi='nvim'
alias vim='nvim'

zoxide init fish | source

export PATH="$PATH:/home/vishesh/.juliaup/bin"
export PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH"
export LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libstdc++.so.6"
export RANGER_LOAD_DEFAULT_RC=FALSE

if test "$XDG_SESSION_TYPE" = "wayland"
    set -x MOZ_ENABLE_WAYLAND 1
end

