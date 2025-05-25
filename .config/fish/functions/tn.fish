function tn
    tmux new-session -s (basename (pwd) | tr . _)
end
