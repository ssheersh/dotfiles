function copy
    if test (count $argv) -eq 0
        cat | wl-copy
    else
        cat $argv | wl-copy
    end
end
