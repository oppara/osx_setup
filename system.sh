#!/bin/bash
set -eu


# 再ログイン時にウィンドウを再度開くを無効にする
defaults write com.apple.loginwindow TALLogoutSavesState -bool false
defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

# USB SuperDrive を使用できるようにする
sudo nvram boot-args="mbasd=1"


# スタンバイモードを12時間後に
sudo pmset -a standbydelay 43200

# セーフスリープをやめる
sudo pmset -a hibernatemode 0

# 緊急モーションセンサーを無効化
sudo pmset -a sms 0

# スリープイメージを削除し、再度の書き込みを禁止する
sudo rm /private/var/vm/sleepimage
sudo touch /private/var/vm/sleepimage
sudo chflags uchg /private/var/vm/sleepimage


# ローカライズファイルを削除
sudo find / -name '.localized' | xargs sudo rm


#
# 一般
#

# アピアランス：ブルー
defaults write -g AppleAquaColorVariant -int 1

# メニューバーと Dock を暗くしない
defaults write -g AppleInterfaceStyle -string "Light"

# メニューバーを自動的に隠さない
defaults write -g _HIHideMenuBar -bool false

# 強調表示色：グラファイト
defaults write -g AppleHighlightColor -string "0.847059 0.847059 0.862745"

# サイドバーのアイコンサイズ：小
defaults write -g NSTableViewDefaultSizeMode -int 1

# 書類を閉じるときに変更内容を保持するかどうかを確認しない
defaults write -g NSCloseAlwaysConfirmsChanges -bool false

# アプリケーションを終了するときにウインドウを閉じる
defaults write -g NSQuitAlwaysKeepsWindows -bool false

# 最近使った項目


#
# Dock
#

# デフォルトで入っているアプリを消す
defaults write com.apple.dock persistent-apps -array

# 起動中のアプリのみ Dock に表示する
defaults write com.apple.dock static-only -bool true

# サイズ：小
defaults write com.apple.dock tilesize -int 16

# 拡大する：最大
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 128

# 画面上の位置：下
defaults write com.apple.dock orientation -string "bottom"

# ウィンドウをしまう時のエフェクト：ジニーエフェクト
defaults write com.apple.dock mineffect -string "genie"

# 書類を開くときはフルスクリーン時のみタブで開く
defaults write -g AppleWindowTabbingMode -string "fullscreen"

# ウィンドウのタイトルバーのダブルクリックでしまう
defaults write -g AppleActionOnDoubleClick -string "Minimize"

# ウィンドウをアプリケーションアイコンにしまう
defaults write com.apple.dock minimize-to-application -bool true

# 起動中のアプリケーションをアニメーションで表示しない
defaults write com.apple.dock launchanim -bool false

# Dock を自動的に隠す
defaults write com.apple.dock autohide -bool true
# Dock の表示非表示のアニメーションの速さ
defaults write com.apple.dock autohide-time-modifier -float 0.8

# 起動済みのアプリケーションにインジケータを表示
defaults write com.apple.dock show-process-indicators -bool true


#
# Mission Control
#

# アニメーションを速くする
defaults write com.apple.dock expose-animation-duration -float 0.4

# 最新の使用状況に基づいて操作スペースを自動的に並べ替えない
defaults write com.apple.dock mru-spaces -bool false

# アプリケーションウィンドウの切り替えで、アプリケーションのウィンドウが開いている操作スペースに移動
defaults write -g AppleSpacesSwitchOnActivate -bool true

# ウィンドウをアプリケーションごとにグループ化しない
defaults write com.apple.dock expose-group-by-app -bool false

# ディスプレイごとに個別の操作スペース
defaults write com.apple.spaces spans-displays -bool true

# Dashboard：オーバーレイ
defaults write com.apple.dashboard enabled-state -int 1

#
# 省エネルギー
#

#
# キーボード
#

# キーリピート
defaults write -g InitialKeyRepeat -int 13
defaults write -g KeyRepeat -int 2

#
# マウス
#

#
# トラックパッド
#

#
# サウンド
#

#
# App
#

# Mail: 添付ファイルのプレビューをしない
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# TextEdit: プレーンテキストをデフォルトにする
defaults write com.apple.TextEdit RichText -int 0

# ActivityMonitor: Dock アイコンを CPU のグラフ表示にする
defaults write com.apple.ActivityMonitor IconType -int 5

# Photos: iPhoneを接続しても写真アプリを起動させない
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# TimeMachine: アラートを表示させない
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
# TimeMachine: ローカルスナップショットを無効にする
sudo tmutil disablelocal



for app in Safari Finder Dock Mail cfprefsd SystemUIServer; do killall "$app" >/dev/null 2>&1; done

