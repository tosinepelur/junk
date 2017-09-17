echo msgbox "You must download & configure bash.exe to run this script. Check bit.ly/sortbyme" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
start cmd.exe /k "bash.exe sortbyme.sh"
