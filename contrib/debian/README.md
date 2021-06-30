
Debian
====================
This directory contains files used to package whatcoind/whatcoin-qt
for Debian-based Linux systems. If you compile whatcoind/whatcoin-qt yourself, there are some useful files here.

## whatcoin: URI support ##


whatcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install whatcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your whatcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/whatcoin128.png` to `/usr/share/pixmaps`

whatcoin-qt.protocol (KDE)

