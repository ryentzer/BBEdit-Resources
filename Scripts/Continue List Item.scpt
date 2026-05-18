tell application "BBEdit"
	tell front text window
		set doc to text document 1
		set sel to selection
		set lineNum to startLine of sel
		set lineText to contents of line lineNum of doc
		set prefix to ""

		-- Task list must come before generic `- ` check
		if lineText starts with "- [ ] " or lineText starts with "- [x] " then
			set prefix to "- [ ] "

		-- Blockquote
		else if lineText starts with "> " then
			set prefix to "> "

		-- Unordered lists
		else if lineText starts with "- " then
			set prefix to "- "
		else if lineText starts with "* " then
			set prefix to "* "
		else if lineText starts with "+ " then
			set prefix to "+ "

		-- Ordered list
		else
			set i to 1
			repeat while i ≤ length of lineText
				if character i of lineText is in "0123456789" then
					set i to i + 1
				else
					exit repeat
				end if
			end repeat
			if i > 1 and i ≤ length of lineText and character i of lineText is "." then
				set num to (text 1 thru (i - 1) of lineText) as integer
				set prefix to (num + 1) as string & ". "
			end if
		end if

		-- Empty list/quote line → exit the block instead of continuing
		if lineText is (prefix & return) or lineText is prefix then
			set contents of line lineNum of doc to return
			set contents of sel to ""
		else if prefix is "" then
			set contents of sel to return
		else
			set contents of sel to return & prefix
		end if

	end tell
end tell