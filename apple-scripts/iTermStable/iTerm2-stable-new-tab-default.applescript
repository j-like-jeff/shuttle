--for testing uncomment the "on run" block
on run
	set argsCmd to "ps aux | grep xcode"
	set argsTheme to "Homebrew"
	set argsTitle to "Custom title"
	scriptRun(argsCmd, argsTheme, argsTitle)
end run

on scriptRun(argsCmd, argsTheme, argsTitle)
	set withCmd to (argsCmd)
	set withTheme to (argsTheme)
	set theTitle to (argsTitle)
	CommandRun(withCmd, withTheme, theTitle)
end scriptRun

on CommandRun(withCmd, withTheme, theTitle)
	tell application "Warp"
		if it is not running then
			activate
			if (count windows) is 0 then
				my NewWin(withTheme)
			end if
			my SetWinParam(theTitle, withCmd)
		else if (count windows) is 0 then
			my NewWin(withTheme)
			my SetWinParam(theTitle, withCmd)
		else
			my NewTab(withTheme)
			my SetTabParam(theTitle, withCmd)
		end if
	end tell
end CommandRun

on NewWin(argsTheme)
	tell application "Warp"
		try
			create window with profile argsTheme
		on error msg
			create window with profile "Default"
		end try
	end tell
end NewWin

on SetWinParam(argsTitle, argsCmd)
	tell application "Warp"
		tell the current window
			tell the current session
				set name to argsTitle
				write text argsCmd
			end tell
		end tell
	end tell
end SetWinParam

on NewTab(argsTheme)
	tell application "Warp"
		tell the current window
			try
				create tab with profile withTheme
			on error msg
				create tab with profile "Default"
			end try
		end tell
	end tell
end NewTab

on SetTabParam(argsTitle, argsCmd)
	tell application "Warp"
		tell the current window
			tell the current tab
				tell the current session
					set name to argsTitle
					write text argsCmd
				end tell
			end tell
		end tell
	end tell
end SetTabParam
