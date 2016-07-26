@echo off
cd /d "%~dp0"

set dir=bin\locale\ja\LC_MESSAGES
mkdir "%ProgramFiles%\Unity\MonoDevelop\%dir%"
copy /-y monodevelop.mo "%ProgramFiles%\Unity\MonoDevelop\%dir%"
mkdir "%ProgramFiles%\UnityBeta\MonoDevelop\%dir%"
copy /-y monodevelop.mo "%ProgramFiles%\UnityBeta\MonoDevelop\%dir%"
copy /-y monodevelop.mo "%ProgramFiles(x86)%\Xamarin Studio\%dir%"

copy /-y TipsOfTheDay.xml "%ProgramFiles%\Unity\MonoDevelop\data\options\TipsOfTheDay.xml"
copy /-y TipsOfTheDay.xml "%ProgramFiles%\UnityBeta\MonoDevelop\data\options\TipsOfTheDay.xml"
copy /-y TipsOfTheDay.xml "%ProgramFiles(x86)%\Xamarin Studio\data\options\TipsOfTheDay.xml"
