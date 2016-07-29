@echo off
cd /d "%~dp0"

set dir=bin\locale\ja\LC_MESSAGES
mkdir "%ProgramFiles%\Unity\MonoDevelop\%dir%"
copy /-y monodevelop.mo "%ProgramFiles%\Unity\MonoDevelop\%dir%"
copy /-y monodevelop.mo "%ProgramFiles(x86)%\Xamarin Studio\%dir%"

copy /-y TipsOfTheDay.xml "%ProgramFiles%\Unity\MonoDevelop\data\options"
copy /-y TipsOfTheDay.xml "%ProgramFiles(x86)%\Xamarin Studio\data\options"
