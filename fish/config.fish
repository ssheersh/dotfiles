if status is-interactive
	neofetch
    # Commands to run in interactive sessions can go here
	alias ls="ls -l -h -a"
	alias sl="ls -l -h -a"
	alias mkdir="mkdir -p"
	alias df="df -h"		

 	#alias gcc="gcc -Wall"
	function copy
    		cat $argv | xclip -selection clipboard
	end	

	function paste
    		xclip -selection clipboard -o
	end	
	function g+
		gcc -Wall -o  $argv $argv.c
		./$argv
	end
	function gp+
		g++ -Wall -o  $argv $argv.cpp
		./$argv
	end

end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/ssheersh/anaconda3/bin/conda
    eval /home/ssheersh/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

