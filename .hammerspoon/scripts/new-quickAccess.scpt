
if application "iTerm" is running then
	tell application "iTerm"
		set newWindow to (create window with default profile)
			tell current session of newWindow
				write text "cd ~/quickAccess"
				-- write text "cd ~/quickAccess; clear;"
			end tell
	end tell
else
	tell application "iTerm"
		tell current session of current window
			launch session "Default"
			tell the last session
				write text "cd ~/quickAccess; clear;"
			end tell
		end tell
	end tell
end if

