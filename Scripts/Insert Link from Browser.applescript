-- Insert Link from Browser
-- Grabs the URL and page title from the frontmost running browser
-- and inserts a Markdown link at the cursor in BBEdit.
--
-- Supported: Arc, Google Chrome, Brave Browser, Microsoft Edge, Safari

on getBrowserLink()
	-- Chromium-based browsers (share the same AppleScript dictionary)
	set chromiumBrowsers to {"Arc", "Google Chrome", "Brave Browser", "Microsoft Edge"}
	repeat with browserName in chromiumBrowsers
		if application browserName is running then
			try
				tell application browserName
					set tabURL to URL of active tab of front window
					set tabTitle to title of active tab of front window
					return {tabURL, tabTitle}
				end tell
			end try
		end if
	end repeat

	-- Safari
	if application "Safari" is running then
		try
			tell application "Safari"
				set tabURL to URL of current tab of front window
				set tabTitle to name of current tab of front window
				return {tabURL, tabTitle}
			end tell
		end try
	end if

return {} -- nothing found
end getBrowserLink

-- Main
tell application "BBEdit"
	set result to my getBrowserLink()

	if result is {} then
		display alert "No browser found" message "Open a browser with a page loaded and try again."
		return
	end if

	set tabURL to item 1 of result
	set tabTitle to item 2 of result

	if tabTitle is "" then
		set linkText to "[#CLIPPING#](" & tabURL & ")"
	else
		set linkText to "[" & tabTitle & "](" & tabURL & ")"
	end if

	tell front text window
		set contents of selection to linkText
	end tell
end tell
