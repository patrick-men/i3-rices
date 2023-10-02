# i3-rices

A small collection of the little ricing I do. This is mostly used with i3 tabbed mode.

## Dependencies:

- i3-gaps (DE)
- picom (Transparency)
- polybar (Taskbar)
- i3-lock/i3-lock-fancy (Screen Locking)
- feh (Wallpaper)
- dunst (Notifications Daemon)
- terminator (Terminal Emulator)

All the files are to be put in ~/.config

### xdotool

My personal setup is used on a work laptop. As I'm always working with 2 monitors + laptop, and I have a ton of applications that I regularly use, I've made a script using xdotool to autmate opening them all. This script is found in the xdotool directory.

> To use your own programs instead of those in the script, simply change whatever is after xdotool type. To know what to type there, simply use rofi/drun, and see what you need to type to find/open your desired program.

If you want to use it yourself, you'll need to verify the workspaces/monitor setup - for me it works, as workspace 1-3 correspond to the monitors from left to right. Note that all the hotkeys used in the script are equal to those in my configs + you'll need to add the following to your i3-config file:

```bash
bindsym Control+Mod1+w exec PATH/TO/xdotool.sh
```

Note that you can change the hotkeys (here: ctrl + alt + w), as well as change the path to where you saved the script. Furthermore, play around with the sleeps; the way they are now, xdotool doesn't mess things up by being too fast, and it gives each program enough time to start (therefore avoiding that it opens in the workspace of the following command).