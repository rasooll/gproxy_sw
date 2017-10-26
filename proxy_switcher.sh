#!/bin/bash
case $1 in
	"config")
		echo -e "Please enter your proxy mode [http, https, ftp, socks]"
		read proxymode
		case $proxymode in
			"http")
				echo "Enter http proxy url:"
				read httpurl
				echo "enter http proxy port:"
				read httpport
				gsettings set org.gnome.system.proxy.http host $httpurl
				gsettings set org.gnome.system.proxy.http port $httpport
			;;
			"https")
				echo "Enter https proxy url:"
				read httpsurl
				echo "enter https proxy port:"
				read httpsport
				gsettings set org.gnome.system.proxy.https host $httpsurl
				gsettings set org.gnome.system.proxy.https port $httpsport
			;;
			"ftp")
				echo "Enter ftp proxy url:"
				read ftpurl
				echo "enter ftp proxy port:"
				read ftpport
				gsettings set org.gnome.system.proxy.ftp host $ftpurl
				gsettings set org.gnome.system.proxy.ftp port $ftpport
			;;
			"socks")
				echo "Enter socks proxy url:"
				read socksurl
				echo "enter socks proxy port:"
				read socksport
				gsettings set org.gnome.system.proxy.socks host $socksurl
				gsettings set org.gnome.system.proxy.socks port $socksport
			;;
			*)
				echo "Proxy mode invalid !"
			;;
		esac	
	;;
	"on")
		gsettings set org.gnome.system.proxy mode 'manual'
	;;
	"off")
		gsettings set org.gnome.system.proxy mode 'none'
	;;
	*)
	echo "Invalid command."
	;;
esac