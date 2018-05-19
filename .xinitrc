#export LANG=zh_CN.UTF-8
#export LANGUAGE=zh_CN:en_US
#export LC_CTYPE=en_US.UTF-8

xmodmap .Xmodmap

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=xim

fcitx &

exec awesome
exec gnome-session
#exec startkde

# Here awesome is kept as default
#session=${1:-awesome}
#
#case $session in
#    i3|i3wm           ) exec i3;;
#    kde               ) exec startkde;;
#    xfce|xfce4        ) exec startxfce4;;
#    # No known session, try to run it as command
#    gnome-session     ) exec gnome-session;;
#	*                 ) exec $1;;
#esac
