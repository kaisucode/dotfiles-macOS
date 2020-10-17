
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias q="exit"
alias l="clear"
alias sudo="nocorrect sudo "	#Don't show command again and ask for confirmation

alias ll="ls -l"
alias la="ls -a"
alias sl="ls"

alias mkdir="mkdir -p"
mkcdir()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}

# create .bak copy of file
bak()
{
	for var in "$@"
	do
		cp "$var"{,.bak}
	done
}

# convert markdown file to pdf
mdpdf()
{
	for var in "$@"
	do
		pandoc "$var" -f gfm -s -o "${var%.md}.pdf"
	done
}

# convert markdown file to html
mdhtml()
{
	for var in "$@"
	do
		pandoc "$var" -f gfm -s -o "${var%.md}.html"
	done
}

mderb()
{
	for var in "$@"
	do
		pandoc "$var" -f gfm -s -o "_${var%.md}.html.erb"
	done
}

# fd - cd to selected directory with fzf
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# Vim
alias v="nvim"
alias vi="nvim"
alias vif='nvim $(fzf)'
alias readme="nvim README.md"
alias swap="cd ~/.local/share/nvim/swap/"

# Configs
alias szshrc="source ~/.zshrc"
alias zshconf="nvim ~/.oh-my-zsh/custom/aliases.zsh"
alias viconf="nvim ~/.config/nvim/"

# Python
alias python=python3
alias pip=pip3
alias ve="virtualenv env"
alias dve="deactivate"
ave()
{
	if [ -d "env/" ]; then
		source env/bin/activate
	elif [ -d "venv/" ]; then
		source venv/bin/activate
	fi
}

alias g11="g++ --std=c++11"
jrun()
{
	javac "${1}.java" && java "$1"
}

# Wifi/Bluetooth
alias bt0="rfkill block bluetooth"
alias bt1="rfkill unblock bluetooth"
alias wf0="nmcli radio wifi off"
alias wf1="nmcli radio wifi on"

npm() 
{
	if [[ $@ == "ls" ]]; then
		command npm ls --depth=0 --silent
	elif [[ $@ == "ls -g" ]]; then
		command npm ls -g --depth=0 --silent
	elif [[ $@ == 'uninstall' ]]; then
		command npm uninstall `ls -1 node_modules | tr '/\n' ' '`
	else
		command npm "$@"
	fi
}
# alias web="browser-sync start --server ."
alias web="python3 -m http.server"

# mpg123
alias m="mpg123 -C"
alias ml="mpg123 --loop -1"
alias ma="mpg123 -C@"

# Git
alias gap="git apply --reject --whitespace=fix"
alias gi="git init"
alias gs="git status"
alias ga="git add --all -v"
alias gc="git commit"
alias gic="git commit -m 'Initial commit'"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gcl="git clone"
alias gco="git checkout "
alias gcom="git checkout master"
alias gm="git merge "
alias gl="git log --graph --all --oneline"
alias gl="git -c color.ui=auto log --graph --pretty=tformat:'%C(yellow)%h%Creset}%Cgreen(%ar)%Creset}%C(bold blue)<%an>%Creset} %s' -100|  column -s '}' -t | less"
alias gla="git -c color.ui=auto log --graph --all --pretty=tformat:'%C(yellow)%h%Creset}%Cgreen(%ar)%Creset}%C(bold blue)<%an>%Creset} %s' -100|  column -s '}' -t | less"
alias gk="gitk"
alias gka="gitk --all"
alias gb="git branch"
alias gd="git diff"
alias gpom="git push origin master"
alias gpuom="git pull origin master"
alias grao="git remote add origin"
alias grso="git remote show origin"
alias gpao="git push --all origin"

alias quickAccess="cd $HOME/quickAccess"
alias bookmark="nvim $HOME/Data/Entertainment/Fandoms/bookmark.txt"

# alias myip="ifconfig en0 | awk '$1' == "inet" {print $2}"
# alias myip="ifconfig en0 | awk "$1 == 'inet' {print $2}""
myip()
{
	ifconfig en0 | awk '$1 == "inet" {print $2}'
}

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

