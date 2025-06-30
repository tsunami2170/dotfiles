export XMODIFIERS="@im=fcitx"
export FCITX5_USEWAYLAND=1
export SDL_IM_MODULE=fcitx
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
fcitx5 &
