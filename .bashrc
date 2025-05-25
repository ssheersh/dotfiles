
# ~/.bashrc

# 🌠 Startup bling
if [[ $- == *i* ]]; then
    fastfetch | lolcat

    for i in $(seq 2 10); do
        dots=$(printf '.%.0s' $(seq 1 $i))
        eval "function $dots() { dotdot $dots; }"
    done
fi

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
alias gvim="nvim"
alias Vim="vim"
alias :q="exit"
alias ping="ping -c 5"
alias serve="python3 -m http.server 8000"
alias reload="source ~/.bashrc"
alias tree="eza --tree"

# 🧠 Git shortcuts
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gd="git diff"
alias clone="git clone"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# Expand last command if possible (zsh-style !!)
alias '!!'='bash -c "$(history -p \!\!)"'

# 🖋️ Modal flow vibes — partial Vim mode
set -o vi

# 🛠 Path additions
export PATH="/opt/Xilinx/Vivado/2024.2/bin:$PATH"
export PATH="/usr/local/texlive/2025/bin/x86_64-linux:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# 🧬 Conda environment hook
if [ -f /home/ssheersh/anaconda3/etc/profile.d/conda.sh ]; then
    . /home/ssheersh/anaconda3/etc/profile.d/conda.sh
fi

# 🌌 Starship prompt, because style matters
eval "$(starship init bash)"

