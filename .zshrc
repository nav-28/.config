# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ $TERM_PROGRAM != "WrapTerminal" ]]; then
	if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  		source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
	fi
	source ~/powerlevel10k/powerlevel10k.zsh-theme
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi
export JAVA_HOME="/usr/local/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home/"
# setting paths
export PATH="$HOME/.config/emacs/bin/:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"
export PATH="$PATH:/Users/nav/Library/Application Support/Coursier/bin"
export PNPM_HOME="/Users/nav/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
export ANTLR_INS="$HOME/antlr/antlr4-install"
export CLASSPATH="$HOME/antlr/antlr4-install/bin/antlr-4.10.1-complete.jar:$CLASSPATH"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/Users/nav/opt/anaconda3/bin/python3
export PROJECT_HOME=$HOME/Devel
source /Users/nav/opt/anaconda3/bin/virtualenvwrapper.sh

# setting for alt back and forword key
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# alias
alias antlr4="java -Xmx500M org.antlr.v4.Tool"
alias grun="java org.antlr.v4.gui.TestRig"
alias g="gcc -std=c99 -Wall"
alias m="mkdir"
alias ll="exa -al"
alias ls="exa"
alias cls="clear"
alias sshua="ssh pwadhwa@ug30.cs.ualberta.ca"
alias lilarun="bloop run lila -m lila.app.Lila -c ~/projects/lila/.bloop"
alias runemulator="/Users/nav/Library/Android/sdk/emulator/emulator -avd Pixel_C_API_30"
alias fget="flutter pub get && flutter pub run build_runner build"
alias fwatch="flutter pub run build_runner watch"
alias fbuild="flutter pub run build_runner build"
alias tkill="tmux kill-server"
alias fcheck="flutter analyze && flutter pub run custom_lint && flutter pub run dart_code_metrics:metrics analyze lib --no-fatal-style"
# github alias
alias gpl="git pull"
alias gc="git commit"
alias gph="git push"
alias ga="git add"
alias gs="git status"
alias gr="git reset"
alias gk="git checkout"
alias ssho="ssh -i ~/.ssh/ssh-fishnet.key ubuntu@132.145.98.74"
alias sshv="ssh -i ~/.ssh/openv.key openvpnas@132.145.100.230" 
# power level theme 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nav/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nav/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nav/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nav/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


PATH="/Users/nav/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/nav/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/nav/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/nav/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/nav/perl5"; export PERL_MM_OPT;

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# pnpm
export PNPM_HOME="/Users/nav/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
