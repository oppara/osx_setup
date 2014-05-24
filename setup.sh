#!/usr/bin/env bash

set -x

# ~/.osx — http://mths.be/osx
# https://gitorious.org/wincent/wincent/source/7686bf5bfd0787117c59a187be5447218b29422a:.osx
# https://github.com/yveslaroche/dotfiles/blob/master/.osx
# http://threetreeslight.com/post/58009785849/boxen-mac

# # Ask for the administrator password upfront
# sudo -v

# # Keep-alive: update existing `sudo` time stamp until setup has finished
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Menu bar: disable transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# # Menu bar: hide User and Bluetooth icons
# for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
    # defaults write "${domain}" dontAutoLoad -array \
        # "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
        # "/System/Library/CoreServices/Menu Extras/User.menu"
# done
# defaults write com.apple.systemuiserver menuExtras -array \
    # "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
    # "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
    # "/System/Library/CoreServices/Menu Extras/Battery.menu" \
    # "/System/Library/CoreServices/Menu Extras/Volume.menu" \
    # "/System/Library/CoreServices/Menu Extras/TextInput.menu" \
    # "/System/Library/CoreServices/Menu Extras/Clock.menu"

# # Set highlight color to graphite
# defaults write NSGlobalDomain AppleHighlightColor -string "0.780400 0.815700 0.858800"

# # Set sidebar icon size to small
# defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# # Automatic show scrollbars
# defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"
# # Possible values: `WhenScrolling`, `Automatic` and `Always`

# # Increase window resize speed for Cocoa applications
# defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# # Expand save panel by default
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# # Expand print panel by default
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# # Save to disk (not to iCloud) by default
# defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# # Automatically quit printer app once the print jobs complete
# defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# # Disable the “Are you sure you want to open this application?” dialog
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# # Display ASCII control characters using caret notation in standard text views
# # Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
# defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# # Disable Resume system-wide
# defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# # Disable automatic termination of inactive apps
# defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# # Disable the crash reporter
# #defaults write com.apple.CrashReporter DialogType -string "none"

# # Set Help Viewer windows to non-floating mode
# defaults write com.apple.helpviewer DevMode -bool true

# # Reveal IP address, hostname, OS version, etc. when clicking the clock
# # in the login window
# sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName








# [10.9] Tweak subpixel font rendering (https://wincent.com/wiki/AppleFontSmoothing)
defaults -currentHost write NSGlobalDomain AppleFontSmoothing -int 1

# [10.9] System Preferences -> Desktop & Screen Saver -> Transluscent menu bar -> off
# Requires logout.
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# [10.9] Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

 # [10.9] Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# [10.9] Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# [10.9] Disable press-and-hold for keys in favor of key repeat
# Requires logout.
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# [10.9] Show the ~/Library folder
chflags nohidden ~/Library

# [10.9] Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# [10.9] Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# [10.9] Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# [10.9] Disable smart quotes, dashes, ellipses
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# [10.9] Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# [10.9] Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# [10.9] Finder: allow quitting via Command-Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# [10.9] [Don't] display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool false

# [10.9] Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# [10.9] Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# [10.9] Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# [10.9] Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true


# # [10.9] Misc `systemsetup` settings: see `man systemsetup`
# sudo systemsetup -settimezone America/Los_Angeles
# sudo systemsetup -setusingnetworktime on
# sudo systemsetup -setcomputersleep 60
# sudo systemsetup -setdisplaysleep 15
# sudo systemsetup -setharddisksleep Never
# sudo systemsetup -setrestartfreeze on
# sudo systemsetup -setremoteappleevents off


# [10.9] Disable local Time Machine snapshots
sudo tmutil disablelocal

# for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
    # "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
    # "Terminal" "Transmission" "Twitter" "iCal"; do
    # killall "${app}" > /dev/null 2>&1
# done

killall Finder
