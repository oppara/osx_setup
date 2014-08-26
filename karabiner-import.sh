#!/bin/sh

# https://pqrs.org/osx/karabiner/document.html.ja#commandlineinterface
# % /Applications/Karabiner.app/Contents/Library/bin/karabiner export > karabiner-import.sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.doublepresscommandQ 1
/bin/echo -n .
$cli set repeat.wait 30
/bin/echo -n .
$cli set repeat.initial_wait 400
/bin/echo -n .
$cli set private.app_terminal_esc_with_eisuu 1
/bin/echo -n .
$cli set private.vim_keybind_apps_esc_with_eisuu 1
/bin/echo -n .
/bin/echo
