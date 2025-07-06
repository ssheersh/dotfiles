

if status is-interactive
	# 🌠 Startup bling
	fastfetch | lolcat

	for i in (seq 2 10)
	    set dots (string repeat -n $i ".")
	    eval "function $dots; dotdot $dots; end"
	end

	# 🧩 Aliases: concise & productive
	alias ls="eza --icons -l -a -h --group-directories-first"
	alias sl="eza --icons -l -a -h"
	alias ll="eza -lah"
	alias la="eza -a"
	alias ..="cd .."
	alias ...="cd ../.."
	alias mkdir="mkdir -p"
	alias cp="cp -riv"
	alias mv="mv -iv"
	alias df="df -h"
	alias cat="bat"
	alias grep="rg"
	alias vim="nvim"
	alias vi="nvim"
	alias gvim="nvim"
	alias Vim="vim"  # fallback if needed
	alias :q="exit"
	alias ping="ping -c 5"
	alias serve="python3 -m http.server 8000"
	alias reload="source ~/.config/fish/config.fish"
	alias tree="eza --tree"

	# 🧠 Git shortcuts
	alias gs="git status"
	alias ga="git add ."
	alias gc="git commit -m"
	alias gp="git push"
	alias gl="git log --oneline --graph --decorate"
	alias gd="git diff"
	alias clone="git clone"
	alias !!='expand_last'

	# Miscellany
	alias sql='mariadb -u ssheersh -p'


end

# 🖋️ Vim keybindings for that modal flow
fish_vi_key_bindings


# 🛠 Path additions
set -U fish_user_paths /opt/Xilinx/Vivado/2024.2/bin/ $fish_user_paths
export PATH="/usr/local/texlive/2025/bin/x86_64-linux:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
set -U fish_user_paths $HOME/.config/code-wrapper/bin $fish_user_paths
set -Ux PATH $HOME/.local/share/scripts/ $PATH

# 🧬 Conda environment hook
if test -f /home/ssheersh/anaconda3/bin/conda
    eval /home/ssheersh/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end

# 🌌 Starship prompt, because style matters
starship init fish | source

