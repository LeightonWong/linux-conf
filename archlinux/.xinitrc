xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

export XIM="fcitx"
export XMODIFIERS="@im=fcitx"
export XIM_PROGRAM=fcitx
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim

#export XIM=ibus
#export XMODIFIERS=@im=ibus
#export XIM_PROGRAM=ibus
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=ibus
#export LC_ALL=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8
#exec	openbox-session
xscreensaver -no-splash &
#ibus-daemon -xrd &
#xrdb 	-merge $HOME/.Xresources &
#urxvtd &
#exec	awesome
#exec	pekwm
#eval `cat ~/.fehbg` &
#
#xmonad startup config
#xpmroot ~/documents/Pictures/wallpaper/Colos_of_The_Storm_by_Gate_To_Nowhere.jpg &
#stalontray &
#trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --height 29 --width 5% --transparent true --alpha 0 --tint 0x000000 --widthtype percent --heighttype pixel --monitor primary&
xrdb -merge $HOME/.Xresources
xsetroot -cursor_name left_ptr
xsetroot -solid '#80a0af'
#xmodmap -e "remove Lock = Caps_Lock"
#xmodmap -e "keysym Caps_Lock = Control_L"
#xmodmap -e "add Control = Control_L"
#status | dzen2 -ta r -fg '#a8a3f7' \
#                     -bg '#3f3c6d' \
#                     -fn '-*-terminus-medium-r-normal--16-*' \
#                     -e "button1=exec:urxvt" & 
#urxvtd &
fcitx &
blueman-applet &
sh ~/.fehbg
#exec ck-launch-session xmonad
#exec xmonad

dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
exec i3
start-pulseaudio-x11
