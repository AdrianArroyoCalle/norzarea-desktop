#!/bin/bash
#$1 can be dialog, whiptail, gdialog, kdialog, Xdialog
DIALOG=$1
URL=${2-"http://github.com/AdrianArroyoCalle/norzarea/archive/gh-pages.zip"}
$DIALOG --title "Norzarea Desktop" --msgbox "Welcome to the Norzarea Desktop Downloader Utility Helper\nThis utility downloads the lastest version of Azpazeta and unpack it" 20 50
{
	echo "0"
	wget --quiet $URL -O norzarea-gh-pages.zip
	echo "33"
	unzip norzarea-gh-pages.zip
	echo "66"
	rm norzarea-gh-pages.zip
	echo "100"
	
} | $DIALOG --title "Norzarea Desktop" --gauge "Downlading lastest Norzarea ($URL)" 10 70 0

