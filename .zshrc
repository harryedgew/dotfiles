# Set environment variable
export SSH_AUTH_SOCK=/home/harry/.bitwarden-ssh-agent.sock

# Enable colours and change prompt
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Shortened aliases
alias vim="nvim"
alias cl="clear"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	ip="ip -color=auto" \
	update="sudo dnf up -y && sudo flatpak update -y"

# Cache stuff
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Zsh plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
