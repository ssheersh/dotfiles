function set_dotfiles_git_env --on-variable PWD
    # Check if we're in home or inside it
    if string match -q "$HOME"* $PWD
        # Set env vars for dotfiles repo only when inside home dir
        set -gx GIT_DIR "$HOME/.dotfiles"
        set -gx GIT_WORK_TREE "$HOME"
    else
        # Unset them outside home so other repos work normally
        set -e GIT_DIR
        set -e GIT_WORK_TREE
    end
end
