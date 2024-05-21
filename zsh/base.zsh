
# needed for emacs lsp config
export LSP_USE_PLISTS=true

export LDFLAGS="-L/usr/local/opt/llvm/lib/c++ -Wl,-rpath,/usr/local/opt/llvm/lib/c++"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib:$LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# antlr
export ANTLR_INS="$HOME/antlr/antlr4-install"
export ANTLR_JAR="$HOME/antlr/antlr4-install/bin/antl4-4.13.0-complete.jar"
export CLASSPATH="$ANTLR_JAR:$CLASSPATH"

# mlir
export MLIR_INS="$HOME/llvm-project/build/"
export MLIR_DIR="$MLIR_INS/lib/cmake/mlir/" # Don't change me. 
export PATH="$MLIR_INS/bin:$PATH" # Don't change me

export PATH="$PATH:$HOME/Tester/bin/"

export PATH="$PATH:/Users/nav/.config/scripts"
export PATH="$PATH:/Users/nav/fvm/default/bin"

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


