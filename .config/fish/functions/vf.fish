function vf
    set file (fzf)
    if test -n "$file"
        nvim $file
    end
end
