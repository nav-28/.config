
# alias
alias g="gcc -std=c99 -Wall"
alias m="mkdir"
alias ll="exa -al"
alias ls="exa"
alias cls="clear"
alias sshua="ssh pwadhwa@ug30.cs.ualberta.ca"
alias em="emacsclient --create-frame $argv &"

alias lilarun="bloop run lila -m lila.app.Lila -c ~/projects/lila/.bloop"
alias tkill="tmux kill-server"

# android emulators
alias runemulator="/Users/nav/Library/Android/sdk/emulator/emulator -avd Nexus_Aspect"
alias runemulator2="/Users/nav/Library/Android/sdk/emulator/emulator -avd Pixel_6"

# flutter
alias fget="flutter pub get && dart run build_runner build"
alias fwatch="dart run build_runner watch"
alias fbuild="dart run build_runner build"
alias fcheck="flutter analyze && dart run custom_lint && dart run dart_code_metrics:metrics analyze lib --no-fatal-style"
alias dartcheck="dart run dart_code_metrics:metrics analyze lib --no-fatal-style"
# github alias
alias gpl="git pull"
alias gc="git commit"
alias gph="git push"
alias ga="git add"
alias gs="git status"
alias gr="git reset"
alias gk="git checkout"


