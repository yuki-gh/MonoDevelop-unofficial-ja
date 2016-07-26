#! /bin/sh

dir=locale/ja/LC_MESSAGES
for prefix in /usr/share /opt/monodevelop/share /opt/monodevelop/lib/monodevelop
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
		cp -i TipsOfTheDay.xml "$target/TipsOfTheDay.xml"
	fi
done
