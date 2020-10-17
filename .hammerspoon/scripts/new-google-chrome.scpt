set myapp to "Google Chrome"
on appIsRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end appIsRunning
if appIsRunning(myapp) then
	tell application "Google Chrome"
		make new window
	end tell
else
	tell application myapp
		activate
	end tell
end if
