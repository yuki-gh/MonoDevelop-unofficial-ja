#! /bin/sh

dir=Contents/MacOS/share/locale/ja/LC_MESSAGES
for app in Unity/MonoDevelop "Xamarin Studio"
do
	target="/Applications/$app.app/$dir"
	if [ -d "$target" ]
	then
		cp -i monodevelop.mo "$target"
	fi
done

dir=lib/monodevelop/data/options
for app in Unity/MonoDevelop.app/Contents/MacOS "Xamarin Studio.app/Contents/Resources"
do
	target="/Applications/$app/$dir"
	if [ -d "$target" ]
	then
		cp -i TipsOfTheDay.xml "$target"
	fi
done
