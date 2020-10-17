
-- Autoreload

local hyper = {"ctrl", "alt", "cmd", "shift"}

-- New iterm
hs.hotkey.bind("alt", "return", function()
	-- hs.osascript.applescriptFromFile("scripts/new-iterm.scpt")
	hs.osascript.applescriptFromFile("scripts/new-quickAccess.scpt")
end)

-- New neovim
hs.hotkey.bind(hyper, "n", function()
	hs.osascript.applescriptFromFile("scripts/new-neovim.scpt")
end)

-- New google-chrome
hs.hotkey.bind(hyper, "g", function()
	hs.osascript.applescriptFromFile("scripts/new-google-chrome.scpt")
end)

-- Photoshop
hs.hotkey.bind(hyper, "p", function()
	hs.execute("open -a 'Adobe Photoshop 2020'")
end)

-- Spotify
hs.hotkey.bind(hyper, "s", function()
	hs.execute("open -a Spotify")
end)

-- Bookmarks
hs.hotkey.bind(hyper, "b", function()
	hs.execute("open $HOME/Data/Entertainment/Fandoms/bookmark.txt")
end)

-- Data
hs.hotkey.bind(hyper, "f", function()
	hs.execute("open $HOME/Data/")
end)

-- Downloads
hs.hotkey.bind(hyper, "d", function()
	hs.execute("open $HOME/Downloads/")
end)

-- Discord
hs.hotkey.bind(hyper, "q", function()
	hs.execute("open -a Discord")
end)

-- Reload
hs.hotkey.bind(hyper, "r", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

