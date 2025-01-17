if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ab_dullah/miniconda3/bin/conda
    eval /home/ab_dullah/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/ab_dullah/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/ab_dullah/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/ab_dullah/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


# pnpm
set -gx PNPM_HOME "/home/ab_dullah/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

nvm use latest >/dev/null
# starship init fish | source
