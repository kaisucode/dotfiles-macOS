
if application "iTerm" is running then
	tell application "iTerm"
		create window with default profile 
	end tell
else
	tell application "iTerm"
		tell current session of current window
			launch session "Default"
		end tell
	end tell
end if

