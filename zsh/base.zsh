
# needed for emacs lsp config
export LSP_USE_PLISTS=true




export PATH="$PATH:/Users/nav/.config/scripts"

# Android
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator"
export ANDROID_HOME="/Users/nav/Library/Android/sdk"

# homebrew java 17 and compiler flags
export PATH="$PATH:/usr/local/opt/openjdk@17/bin"
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"
# Coursier path
export PATH="$PATH:/Users/nav/Library/Application Support/Coursier/bin"

# setting for alt back and forword key
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word


export EDITOR='et'


