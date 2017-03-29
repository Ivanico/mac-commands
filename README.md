## Collection of useful mac commands

# Show your directory path on windows title bar

A personal preference of mine is to see the full directory path to the file or folder I'm in. Here's the command to set that up

`defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder`
