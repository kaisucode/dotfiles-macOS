
-- if input = {} then
	set nvimCommand to "/usr/local/bin/nvim -p"
-- else
--   set filename to POSIX path of input
--   set nvimCommand to ("/usr/local/bin/nvim -p \"" & filename) & "\""
-- end if

if application "iTerm" is running then
	tell application "iTerm"
		create window with default profile command nvimCommand
	end tell
else
	tell application "iTerm"
		tell current session of current window
			write text nvimCommand
		end tell
	end tell
end if
	
