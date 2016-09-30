xrdb .Xresources &

tint2 &

xsetroot -cursor_name left_ptr &

feh --bg-tile ~/Pictures/Background/railroad.jpg &

export LANG=en_US.UTF-8 &

compton -Cc --refresh-rate 1000000 &

sxhkd &

xrandr --output DP-4 --mode 1920x1080 -r 144 &&

xrandr --output DVI-D-0 --mode 1920x1080 -r 144 &&

xrandr --output DP-4 --left-of DVI-D-0 &

exec bspwm 
