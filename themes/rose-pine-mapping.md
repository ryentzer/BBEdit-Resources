# Rose Pine to BBEdit Mapping

## Palette roles

### Rose Pine

- `base`: `#191724`
- `surface`: `#1f1d2e`
- `overlay`: `#26233a`
- `muted`: `#6e6a86`
- `subtle`: `#908caa`
- `text`: `#e0def4`
- `love`: `#eb6f92`
- `gold`: `#f6c177`
- `rose`: `#ebbcba`
- `pine`: `#31748f`
- `foam`: `#9ccfd8`
- `iris`: `#c4a7e7`

### Rose Pine Moon

- `base`: `#232136`
- `surface`: `#2a273f`
- `overlay`: `#393552`
- `muted`: `#6e6a86`
- `subtle`: `#908caa`
- `text`: `#e0def4`
- `love`: `#eb6f92`
- `gold`: `#f6c177`
- `rose`: `#ea9a97`
- `pine`: `#3e8fb0`
- `foam`: `#9ccfd8`
- `iris`: `#c4a7e7`

### Rose Pine Dawn

- `base`: `#faf4ed`
- `surface`: `#fffaf3`
- `overlay`: `#f2e9e1`
- `muted`: `#9893a5`
- `subtle`: `#797593`
- `text`: `#464261`
- `love`: `#b4637a`
- `gold`: `#ea9d34`
- `rose`: `#d7827e`
- `pine`: `#286983`
- `foam`: `#56949f`
- `iris`: `#907aa9`

## BBEdit mapping strategy

- `BackgroundColor`: `base`
- `com.barebones.bblm.code`: `text`
- `com.barebones.bblm.comment`: `muted`
- `com.barebones.bblm.keyword`, `com.barebones.bblm.preprocessor`, `com.barebones.bblm.sgml-tag`: `iris`
- `com.barebones.bblm.string`, `com.barebones.bblm.heredoc-string`, `com.barebones.bblm.perl.generic-string`: `gold`
- `com.barebones.bblm.number`, `com.barebones.bblm.ruby.symbol`, markdown quote/list markers: `rose`
- `com.barebones.bblm.variable`, `com.barebones.bblm.predefined-symbol`, HTML image-ish/content-ish accents: `foam`
- CSS custom properties and function-like identifiers: `pine`
- Links and indexed symbols lean `foam` or `iris` depending on whether the slot reads as a navigational accent or a language keyword
- Syntax errors and hard-regex/meta punctuation use `love`

## Editor highlight mapping

- insertion-point line: a low-contrast surface/overlay step
- active selection: Rose Pine-style medium highlight
- inactive selection: a softer overlay selection
- difference highlight: `pine` with transparency
- sub-line difference: `foam` with transparency
- selected-text occurrences: `iris` with transparency
- live-search matches: `gold` with transparency
- selected live-search match: `love` with transparency
- delimiter match: `foam` with transparency

## Scope

This mapping intentionally targets BBEdit's editor color-scheme surface only. Markdown preview CSS is not included in this port.
