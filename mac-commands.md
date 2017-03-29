# Collection of useful mac commands

This is an intended personal collection of tweaks and customizations I like on my macs, as often, when I switch jobs or I get a new machine I find myself searching over and over again for these commands. Hopefully this will save me some time doing it and might be useful to some of you as well.

## Show your directory path on windows title bar

![Alt text](useful-commands/images/title-bar-screenshot.png?raw=true "optional title")

A personal preference of mine is to see the full directory path to the file or folder I'm in. Here's the command to set that up

`defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder`

You can set `-bool false` if you want to roll back to how it used to be.
