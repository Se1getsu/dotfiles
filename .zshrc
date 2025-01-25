export PATH="$HOME/.pyenv/shims:$PATH"
alias py=python
alias pip="python -m pip"
alias sml="/usr/local/smlnj/bin/sml"

alias       µ˚gi="git init"
alias     µ˚grao="git remote add origin"
alias      µ˚gst="git status"
alias       µ˚gl="git log"
alias       µ˚gp="git push origin \$(git branch --show-current)"
alias      µ˚gpf="git push -f origin \$(git branch --show-current)"
alias      µ˚gpu="git push -u origin \$(git branch --show-current)"
alias       µ˚gr="git rm --cached"
alias     µ˚grhh="git reset --hard HEAD"
alias       µ˚gb="git branch"
alias      µ˚gsw="git switch"
alias       µ˚gs="git stash"
alias      µ˚gsa="git stash apply"
alias      µ˚gsl="git stash list"
alias      µ˚gsu="git stash -u"
alias      µ˚gsp="git stash pop"
alias      µ˚gpl="git pull origin \$(git branch --show-current)"
alias      µ˚gfp="git fetch --prune"

alias       µ˚bc="git fetch -p && git branch --merged | grep -v '*' | xargs git branch -d"

alias       µ˚cm="perl /Users/kakky/Desktop/system/zsh-macros/cm.pl"
alias      µ˚cma="perl /Users/kakky/Desktop/system/zsh-macros/cma.pl"
alias      µ˚cmm="perl /Users/kakky/Desktop/system/zsh-macros/cmm.pl"
alias       µ˚ga="perl /Users/kakky/Desktop/system/zsh-macros/ga.pl"

alias       µ˚rc="vim ~/.zshrc"
alias   µ˚colors="perl /Users/kakky/Desktop/system/zsh-macros/colors.pl"
alias       µ˚nq="networkQuality"
alias      µ˚ter="open -a \"Terminal\""
alias        µ˚x="sh x.sh"
alias        µ˚a="./a.out"


# git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# git-prompt
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_STATESEPARATOR=''

# PS1 customize
setopt PROMPT_SUBST
export PS1='%{%F{yellow}%B%}%.%{%b%} %{%F{red}%}$(__git_ps1 "%s") %{%f%}%% '


export JQ_COLORS="0;37:0;35:0;35:0;33:0;32:1;37:1;37:1;36"

[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions


# pnpm
export PNPM_HOME="/Users/kakky/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

PATH="/Users/kakky/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/kakky/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/kakky/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/kakky/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/kakky/perl5"; export PERL_MM_OPT;

[ -f "/Users/kakky/.ghcup/env" ] && . "/Users/kakky/.ghcup/env" # ghcup-env
export PATH="/opt/homebrew/opt/bison/bin:$PATH"

# ANTLR
export CLASSPATH=".:/usr/local/lib/antlr-4.13.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.13.2-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

# MAPS
export PATH="/opt/maps-1.5/bin:$PATH"
