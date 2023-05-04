xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
# Put this stuff in /etc/X11/xorg.conf.d/30-synaptics.conf to tweak the 
# touchpad Natural scrolling now is negative numbers on delta.
#
xinput set-prop "Synaptics TM3625-010" "libinput Accel Speed" "0.35"
#xinput set-prop "Synaptics TM3625-010" "libinput Natural Scrolling Enabled" "1"
xrandr --output eDP-1 --mode 1920x1080 --brightness 1.0
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute
amixer -c 0 -- sset Master playback 40dB
amixer -c 0 -- sset Speaker playback 40dB
amixer -c 0 -- sset Headphone playback 40dB
udiskie &
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape' &
xset r rate 300 50
exec i3
