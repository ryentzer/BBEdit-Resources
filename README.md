# BBEdit-Resources

Personal enhancements for BBEdit — color schemes, scripts, and clippings.

---

## Color Schemes

Custom `.bbColorScheme` files for BBEdit's modern plist format. See [Color Schemes/README.md](Color%20Schemes/README.md) for full details.

**Install:** `BBEdit > Folders > Color Schemes`, then copy the `.bbColorScheme` files in.

Included schemes:
- **Rose Pine** / **Rose Pine Moon** / **Rose Pine Dawn** — full palette port, see [rose-pine-mapping.md](Color%20Schemes/rose-pine-mapping.md)
- **Foundry**
- **Gloaming**
- **Quiet Paper** / **Quiet Paper Warm**

---

## Scripts

AppleScript utilities for the BBEdit Scripts menu.

**Install:** `BBEdit > Folders > Scripts`, copy `.applescript` files in. Assign keyboard shortcuts via `BBEdit > Scripts > Set Keyboard Shortcut`.

### Continue List Item
Continues the current Markdown list item on Return — handles unordered lists (`-`, `*`, `+`), task lists (`- [ ]`), ordered lists, and blockquotes. Exits the block when the line is empty.

### Insert Markdown Link
Inserts or wraps a Markdown link. Three cases:

| Situation | Result | Cursor lands |
|---|---|---|
| Text selected + URL in clipboard | `[selected text](url)` | after `)` |
| Text selected, no URL | `[selected text]()` | `()` selected |
| No selection | `[](url or empty)` | `[]` selected |

Clipboard is checked automatically — copy a URL, trigger the shortcut, done.

---

## Clippings

Snippet files for the BBEdit Clippings menu. `#CLIPPING#` marks tab stops — Tab cycles through them.

**Install:** `BBEdit > Folders > Clippings`, copy the `Markdown/` folder in. It appears as a submenu in the Clippings palette.

### Markdown/
| Clipping | Inserts |
|---|---|
| **Bold** | `**selection**` |
| **Italic** | `*selection*` |
| **Inline Code** | `` `selection` `` |
| **Image** | `![alt](#CLIPPING#)` with two tab stops |
| **Code Block** | Fenced block with language tab stop |
| **Table** | 3×2 table skeleton with tab stops for every cell |
| **Frontmatter** | YAML front matter with `title`, `date`, `description` tab stops |

All inline clippings (Bold, Italic, Inline Code) wrap selected text if you have a selection, or insert an empty placeholder if you don't.
