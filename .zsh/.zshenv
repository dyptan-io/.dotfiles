export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export HISTCONTROL=ignorespace
export PATH="$PATH:$GOBIN:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export SSH_SK_PROVIDER="/opt/homebrew/lib/libsk-libfido2.dylib"

eval "$(/opt/homebrew/bin/brew shellenv)"