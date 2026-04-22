# Rose Pine for BBEdit

Native BBEdit editor color schemes for the three core Rose Pine variants:

- `Rose Pine.bbColorScheme`
- `Rose Pine Moon.bbColorScheme`
- `Rose Pine Dawn.bbColorScheme`

These were built against BBEdit 15.5.5's modern `.bbColorScheme` plist format and cover:

- document background
- active and inactive selection
- insertion-point line highlight
- difference and sub-line difference highlight
- invisible characters
- spelling
- selected-text occurrences
- live-search matches
- delimiter matching
- BBEdit syntax run kinds used by the factory schemes

## Install

1. In BBEdit, choose `BBEdit > Folders > Color Schemes`.
2. Copy the `.bbColorScheme` files from this folder into that BBEdit support folder.
3. Open `Preferences > Text Colors` and select the scheme you want for the current macOS appearance.

Suggested pairing:

- Dark mode: `Rose Pine` or `Rose Pine Moon`
- Light mode: `Rose Pine Dawn`

## Notes

- The schemes preserve Rose Pine's palette roles rather than attempting a literal VS Code UI port.
- BBEdit exposes fewer theme surfaces than VS Code, so some VS Code-specific chrome colors are intentionally collapsed into BBEdit's editor and syntax categories.
- The companion mapping reference is in [rose-pine-mapping.md](/Users/rickyentzer/Documents/Playground/bbedit-color-schemes/rose-pine-mapping.md).
