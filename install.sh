#! /bin/sh

case $OSTYPE in
darwin*)
	dir=Contents/MacOS/share/locale/ja/LC_MESSAGES
	for app in Unity/MonoDevelop #"Xamarin Studio"
	do
		target="/Applications/$app.app/$dir"
		if [ -d "$target" ]
		then
			cp -i monodevelop.mo "$target"
		fi
	done
	
	dir=lib/monodevelop/data/options
	for app in Unity/MonoDevelop.app/Contents/MacOS #"Xamarin Studio.app/Contents/Resources"
	do
		target="/Applications/$app/$dir"
		if [ -d "$target" ]
		then
			cp -i TipsOfTheDay.xml "$target"
		fi
	done
	;;
linux-gnu)
	dir=locale/ja/LC_MESSAGES
	for prefix in /usr/share /usr/lib/monodevelop /opt/monodevelop/share /opt/monodevelop/lib/monodevelop
	do
		target="$prefix/$dir"
		if [ -d "$target" ]
		then
			cp -i monodevelop.mo "$target"
		fi
	done
	
	dir=lib/monodevelop/data/options
	for prefix in /usr /opt/monodevelop
	do
		target="$prefix/$dir"
		if [ -d "$target" ]
		then
			cp -i TipsOfTheDay.xml "$target"
		fi
	done
	;;
cygwin)
	dir=bin/locale/ja/LC_MESSAGES
	PROGRAMFILES_X86="$PROGRAMFILES (x86)"

	mkdir -p "$PROGRAMFILES/Unity/MonoDevelop/$dir"
	cp -i monodevelop.mo "$PROGRAMFILES/Unity/MonoDevelop/$dir"
	cp -i monodevelop.mo "$PROGRAMFILES_X86/Unity/MonoDevelop/$dir"
	#cp -i monodevelop.mo "$PROGRAMFILES/Xamarin Studio/$dir"
	#cp -i monodevelop.mo "$PROGRAMFILES_X86/Xamarin Studio/$dir"

	cp -i TipsOfTheDay.xml "$PROGRAMFILES/Unity/MonoDevelop/data/options"
	cp -i TipsOfTheDay.xml "$PROGRAMFILES_X86/Unity/MonoDevelop/data/options"
	#cp -i TipsOfTheDay.xml "$PROGRAMFILES/Xamarin Studio/data/options"
	#cp -i TipsOfTheDay.xml "$PROGRAMFILES_X86/Xamarin Studio/data/options"
	;;
*)
	echo "unknown operating system: $OSTYPE"
	;;
esac
