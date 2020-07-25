# i3-gnome-flashback [![LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/)

Allows you to use i3 in a GNOME-Flashback session. Large parts of this are based on the existing [`i3-gnome`](https://github.com/lvillani/i3-gnome) project.

This has been tested working on GNOME version **3.36**.

This is a fork of https://github.com/deuill/i3-gnome-flashback, which fixes compatibility with GNOME 3.36 by adding 25-gnome-flashback.gschema.override to do the following:

1. Disable the desktop icons (not because they are bad but because i3 (unlike awseome for instance) cannot handle them, it treats them like any other window.

2. Enable the root-background to allow you to use gnome-control-center to set the wallpaper

3. Replace the minimize, maximize and close buttons in the headerbar of most GNOME apps with just the appmenu.

# Installation

For Ubuntu, ensure prerequisites are installed:
```
sudo apt install i3 gnome-flashback build-essential
```
For Arch Linux, ensure prerequisites are installed:
```
sudo pacman -Syuv --needed i3 gnome-flashback make git
```
Then install i3-gnome-flashback:
```
git clone https://github.com/SkyyySi/i3-gnome-flashback.git
cd i3-gnome-flashback
sudo make install
```

# Notes

To understand how the files in this repo work to initialize an i3 and GNOME session, refer to this [GNOME wiki](https://wiki.gnome.org/Projects/SessionManagement/RequiredComponents) on session management.
