# ~/.zshenv

# Path
typeset -U PATH path
path=("/opt/resolve/bin" "$path[@]")
export PATH

# xdg directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/var/run/user/`id -u`"

# dummy-uvm.so for access to the gpu
export LD_PRELOAD="$HOME/.config/gpu/dummy-uvm.so"
export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia

# qt5
export QT_QPA_PLATFORMTHEME=qt5ct

# x11 - comment out to use wayland
export DISPLAY=unix:0
export QT_QPA_PLATFORM=xcb
export GDK_BACKEND=x11

# wayland - uncomment to use wayland
#export WAYLAND_DISPLAY=wayland-0
#export QT_QPA_PLATFORM=wayland
#export GDK_BACKEND=wayland
