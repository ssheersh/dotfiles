function cdz
    set dir (fd . ~ --type d | fzf)
    if test -n "$dir"
        cd "$dir"
    end
end
