# i3-rices

A small collection of the little ricing I do. This is mostly used with i3 tabbed mode.

## Dependencies:

- i3-gaps (DE) - v4.22
- picom (Transparency) - v10
- polybar (Taskbar) - v3.6.3
- i3-lock/i3-lock-fancy (Screen Locking) - v2.14.1
- feh (Wallpaper) - v3.9.1
- dunst (Notifications Daemon) - v1.9.2
- terminator (Terminal Emulator) - v2.1.3
- zsh (Shell) - v5.9
- xdotool (User input automation) - v3.20211022.1

All the files are to be put in ~/.config

### xdotool

My personal setup is used on a work laptop. As I'm always working with 2 monitors + laptop, and I have a ton of applications that I regularly use, I've made a script using xdotool to autmate opening them all. This script is found in the xdotool directory.

> To use your own programs instead of those in the script, simply change whatever is after xdotool type. To know what to type there, simply use rofi/drun, and see what you need to type to find/open your desired program.

If you want to use it yourself, you'll need to verify the workspaces/monitor setup - for me it works, as workspace 1-3 correspond to the monitors from left to right. Note that all the hotkeys used in the script are equal to those in my configs + you'll need to add the following to your i3-config file:

```bash
bindsym Control+Mod1+w exec PATH/TO/xdotool.sh
```

Note that you can change the hotkeys (here: Ctrl + Alt + W), as well as change the path to where you saved the script. Furthermore, play around with the sleeps; the way they are now, xdotool doesn't mess things up by being too fast, and it gives each program enough time to start (therefore avoiding that it opens in the workspace of the following command).

### Terminator

If you want to use the same terminal emulator used in the config files, you'll need [Terminator](https://github.com/gnome-terminator/terminator) (optionally, you get the [theme plugin](https://github.com/EliverLara/terminator-themes) as well).

Once that is ready, you have two options:
1. You use the plugin to download the themes used in the dotfiles - this will automatically create a profile with the name of the theme. This way, you can open the terminal with your chosen theme using `Ctrl + Alt + T`.
2. You copy paste my Terminator configs, which already include the theme/profile in question

> I recommend downloading the plugin, it has TONS of themes + setting the background of terminator to transparent, 0.97

### Polybar - shapes

This theme has the option to choose a color scheme (click on the heart icon) - pick whichever you feel fits best.