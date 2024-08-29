
# setting for alt back and forword key
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

FLUTTER="$HOME/fvm/default/bin"
COURSIER="/Users/nav/Library/Application Support/Coursier/bin"
OPENJDK="/opt/homebrew/opt/openjdk/bin"

# to add more path use $PATH:$VARIABLE:$Variable2
export PATH="$PATH:$FLUTTER:$OPENJDK:$COURSIER"


