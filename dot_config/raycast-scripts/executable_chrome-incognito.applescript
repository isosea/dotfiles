#!/usr/bin/osascript

# @raycast.schemaVersion 1
# @raycast.title Focus Chrome Incognito
# @raycast.mode silent

tell application "Google Chrome"
	if (count of windows) = 0 then
		make new window with properties {mode:"incognito"}
		activate
		return
	end if
	
	set incognitoWindows to every window whose mode is "incognito"
	
	if (count of incognitoWindows) > 0 then
		set targetWindow to item 1 of incognitoWindows
		set index of targetWindow to 1
		activate
	else
		make new window with properties {mode:"incognito"}
		activate
	end if
end tell
