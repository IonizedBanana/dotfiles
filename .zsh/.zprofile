if [[ "$(tty)" = "/dev/tty1" ]]; then
  export XCURSOR_SIZE=18
  export XCURSOR_THEME=Adwaita
	exec mango
fi
