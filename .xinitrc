xrdb .Xresources &

xsetroot -cursor_name left_ptr &

feh --bg-fill ~/Pictures/spacey.png &

xset +fp /home/james/.fonts & 

sxhkd -c ~/.config/herbstluftwm/sxhkdrc & 

export LANG=en_US.UTF-8 &

cmptn &

exec herbstluftwm --locked
