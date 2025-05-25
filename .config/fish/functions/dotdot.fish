function dotdot
    set dots (status current-command)
    set depth (string length $dots)

    # Build the target path
    set path ""
    for i in (seq $depth)
        set path "../$path"
    end

    # Normalize path (remove trailing slash)
    set target (realpath -- "$PWD/$path")

    # Show preview
    echo -e "\n🌍 Current dir: $PWD"
    echo "🚀 Jumping $depth level(s) up to:"
    echo "📂 $target\n"

    # Confirm jump
    read -P "Proceed? (y/n): " confirm

    if test "$confirm" = "y" -o "$confirm" = "Y"
        cd $path
    else
        echo "Canceled. Staying put."
    end
end
