#! /bin/sh

dir=bin/locale/ja/LC_MESSAGES
PROGRAMFILES_X86="$PROGRAMFILES (x86)"

mkdir -p "$PROGRAMFILES/Unity/MonoDevelop/$dir"
cp -i monodevelop.mo "$PROGRAMFILES/Unity/MonoDevelop/$dir"
cp -i monodevelop.mo "$PROGRAMFILES_X86/Unity/MonoDevelop/$dir"
cp -i monodevelop.mo "$PROGRAMFILES/Xamarin Studio/$dir"
cp -i monodevelop.mo "$PROGRAMFILES_X86/Xamarin Studio/$dir"

cp -i TipsOfTheDay.xml "$PROGRAMFILES/Unity/MonoDevelop/data/options"
cp -i TipsOfTheDay.xml "$PROGRAMFILES_X86/Unity/MonoDevelop/data/options"
cp -i TipsOfTheDay.xml "$PROGRAMFILES/Xamarin Studio/data/options"
cp -i TipsOfTheDay.xml "$PROGRAMFILES_X86/Xamarin Studio/data/options"
