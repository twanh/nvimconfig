# Neovim Keybindings Reference

This document provides a comprehensive overview of all custom keybindings configured in this Neovim setup.

**Note:** `<leader>` key is the default leader key (backslash `\`). You can check your leader with `:echo mapleader`

---

## Table of Contents

- [General Navigation](#general-navigation)
- [Window Management](#window-management)
- [Buffer Management](#buffer-management)
- [Editing](#editing)
- [Clipboard Operations](#clipboard-operations)
- [Search](#search)
- [LSP (Language Server Protocol)](#lsp-language-server-protocol)
- [Telescope (Fuzzy Finder)](#telescope-fuzzy-finder)
- [File Explorer (nvim-tree)](#file-explorer-nvim-tree)
- [Diagnostics (Trouble)](#diagnostics-trouble)
- [GitHub Copilot](#github-copilot)
- [Completion (nvim-cmp)](#completion-nvim-cmp)
- [Comments (Commentary)](#comments-commentary)
- [Snippets](#snippets)
- [Terminal Mode](#terminal-mode)
- [Spell Checking](#spell-checking)
- [Markdown Snippets](#markdown-snippets)
- [LaTeX (VimTeX)](#latex-vimtex)

---

## General Navigation

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `n` | Next search result (centered) | `keymaps.lua:23` |
| Normal | `N` | Previous search result (centered) | `keymaps.lua:24` |

---

## Window Management

### Window Navigation

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<C-h>` | Move to left window | `keymaps.lua:2` |
| Normal | `<C-j>` | Move to window below | `keymaps.lua:3` |
| Normal | `<C-k>` | Move to window above | `keymaps.lua:4` |
| Normal | `<C-l>` | Move to right window | `keymaps.lua:5` |

### Window Resizing

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<M-j>` (Alt+j) | Decrease window height | `keymaps.lua:8` |
| Normal | `<M-k>` (Alt+k) | Increase window height | `keymaps.lua:9` |
| Normal | `<M-h>` (Alt+h) | Decrease window width | `keymaps.lua:10` |
| Normal | `<M-l>` (Alt+l) | Increase window width | `keymaps.lua:11` |

---

## Buffer Management

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>q` | Go to previous buffer | `keymaps.lua:14` |
| Normal | `<leader>w` | Close current buffer | `keymaps.lua:15` |
| Normal | `<leader>e` | Go to next buffer | `keymaps.lua:16` |
| Normal | `<leader>r` | Reload all buffers | `keymaps.lua:35` |

---

## Editing

### Indentation

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Visual | `<` | Indent left (stays in visual mode) | `keymaps.lua:19` |
| Visual | `>` | Indent right (stays in visual mode) | `keymaps.lua:20` |

---

## Clipboard Operations

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>y` | Yank to system clipboard | `keymaps.lua:29` |
| Visual | `<leader>y` | Yank to system clipboard | `keymaps.lua:30` |
| Normal | `<leader>p` | Paste from system clipboard | `keymaps.lua:31` |
| Visual | `<leader>p` | Paste from system clipboard | `keymaps.lua:32` |

---

## Search

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `n` | Next search result (centered) | `keymaps.lua:23` |
| Normal | `N` | Previous search result (centered) | `keymaps.lua:24` |

---

## LSP (Language Server Protocol)

These keybindings are available when an LSP server is attached to a buffer.

### Navigation

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `gd` | Go to definition | `lsp/init.lua:7` |
| Normal | `gD` | Go to declaration | `lsp/init.lua:8` |
| Normal | `gr` | Go to references | `lsp/init.lua:9` |
| Normal | `gi` | Go to implementation | `lsp/init.lua:10` |

### Documentation

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `K` | Show hover documentation | `lsp/init.lua:13` |
| Normal | `<C-k>` | Show signature help | `lsp/init.lua:14` |

### Code Actions

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `ca` | Code action | `lsp/init.lua:17` |
| Normal | `<leader>rn` | Rename symbol | `lsp/init.lua:18` |

### Diagnostics

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `[d` | Go to previous diagnostic | `lsp/init.lua:21` |
| Normal | `]d` | Go to next diagnostic | `lsp/init.lua:22` |

---

## Telescope (Fuzzy Finder)

### File Searching

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>ff` | Find files | `telescope/mappings.lua:5` |
| Normal | `<leader>fg` | Find git files | `telescope/mappings.lua:6` |
| Normal | `<leader>fd` | Search open buffers | `telescope/mappings.lua:9` |
| Normal | `<leader>fb` | Live grep (search in files) | `telescope/mappings.lua:18` |

### Special Searches

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>fn` | Search notes (~/Dropbox/notes) | `telescope/mappings.lua:22` |
| Normal | `<leader>fw` | Search workspace (~/.config/nvim) | `telescope/mappings.lua:24` |
| Normal | `<leader>fr` | Search registers | `telescope/mappings.lua:12` |
| Normal | `<leader>fs` | Spell suggestions | `telescope/mappings.lua:15` |

### LSP Integration

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>fq` | Search document symbols | `telescope/mappings.lua:27` |
| Normal | `<leader>fe` | Search diagnostics | `telescope/mappings.lua:28` |

---

## File Explorer (nvim-tree)

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>b` | Toggle file tree | `nvim-tree.lua:7` |

---

## Diagnostics (Trouble)

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>xx` | Toggle diagnostics window | `trouble.lua:8` |
| Normal | `<leader>xd` | Show LSP definitions | `trouble.lua:14` |
| Normal | `<leader>xr` | Show LSP references | `trouble.lua:20` |

---

## GitHub Copilot

### Inline Suggestions

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Insert | `<Tab>` | Accept Copilot suggestion | `copilot.lua:20` |
| Insert | `<M-]>` (Alt+]) | Next suggestion | `copilot.lua:23` |
| Insert | `<M-[>` (Alt+[) | Previous suggestion | `copilot.lua:24` |
| Insert | `<C-]>` | Dismiss suggestion | `copilot.lua:25` |

### Toggle

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>g` | Toggle Copilot on/off | `copilot.lua:45` |

---

## Completion (nvim-cmp)

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Insert | `<C-n>` | Select next completion item | `cmp.lua:137` |
| Insert | `<C-p>` | Select previous completion item | `cmp.lua:138` |
| Insert | `<C-e>` | Abort completion | `cmp.lua:139` |
| Insert | `<CR>` (Enter) | Confirm selected completion | `cmp.lua:142` |
| Insert | `<C-d>` | Scroll documentation up | `cmp.lua:140` |
| Insert | `<C-f>` | Scroll documentation down | `cmp.lua:141` |

**Note:** Tab is used for Copilot, not for completion navigation.

---

## Comments (Commentary)

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>\` | Toggle comment on current line | `commentary.lua:6` |
| Visual | `<leader>\` | Toggle comment on selection | `commentary.lua:7` |

---

## Snippets

### UltiSnips (Legacy - Tab conflicts with Copilot)

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Insert | `<Tab>` | Expand snippet / Jump forward | `ultisnips.lua:1-2` |
| Insert | `<S-Tab>` | Jump backward | `ultisnips.lua:3` |

**Note:** UltiSnips Tab binding may conflict with Copilot configuration.

### Custom Snippet Navigation

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Insert | `;;` | Jump to next placeholder (`<++>`) | `snips.lua:6` |

---

## Terminal Mode

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Terminal | `<leader><Esc>` | Exit terminal mode to normal mode | `keymaps.lua:39` |

---

## Spell Checking

| Mode | Keybinding | Action | File |
|------|------------|--------|------|
| Normal | `<leader>s` | Go to previous spelling error and auto-fix | `keymaps.lua:42` |
| Normal | `<leader>fs` | Telescope spell suggestions | `telescope/mappings.lua:15` |

---

## Markdown Snippets

These snippets are available in Markdown files (`.md`).

| Insert Mode Trigger | Result | Description | File |
|---------------------|--------|-------------|------|
| `;fm` | Frontmatter block | YAML frontmatter with title, date, tags | `snips.lua:17` |
| `;m` | `$$ <++>` | LaTeX math block | `snips.lua:21` |
| `;fr` | `\frac{}{<++>}<++>` | LaTeX fraction | `snips.lua:24` |
| `;c` | Code block | Markdown code block with language | `snips.lua:28` |
| `;l` | `[<++>](<++>)` | Markdown link | `snips.lua:32` |
| `;b` | `**** <++>` | Bold text | `snips.lua:36` |
| `;i` | `__ <++>` | Italic text | `snips.lua:40` |

**Note:** After inserting a snippet, use `;;` to jump to the next placeholder (`<++>`).

---

## LaTeX (VimTeX)

VimTeX provides many default keybindings with the `<localleader>` prefix (default: `\`).

### Common VimTeX Commands

Most VimTeX commands use the default keybindings. Some commonly used ones:

- `<localleader>ll` - Start/stop continuous compilation
- `<localleader>lv` - View PDF (opens in Zathura)
- `<localleader>lc` - Clean auxiliary files
- `<localleader>lk` - Stop compilation
- `<localleader>le` - Show compilation errors

**Configuration:** PDF viewer is set to Zathura (`vimtex.lua:17`)

For a complete list of VimTeX keybindings, run `:help vimtex-default-mappings` in Neovim.

---

## Settings Summary

### Leader Key
- Default leader: `\` (backslash)
- Check with: `:echo mapleader`

### Key Notation
- `<C-x>` = Ctrl + x
- `<M-x>` = Alt + x (Meta)
- `<S-x>` = Shift + x
- `<leader>` = Leader key (default: `\`)
- `<CR>` = Enter/Return

### Theme
- **Colorscheme:** Ayu Mirage
- **Font:** Fira Code

---

## Quick Reference Card

### Most Used Keybindings

```
Navigation:
  <C-h/j/k/l>     - Move between windows
  gd              - Go to definition (LSP)
  <leader>b       - Toggle file tree

Buffers:
  <leader>q/e     - Previous/Next buffer
  <leader>w       - Close buffer

Search:
  <leader>ff      - Find files
  <leader>fb      - Grep in files
  <leader>fd      - Search buffers

LSP:
  K               - Hover documentation
  ca              - Code action
  <leader>rn      - Rename
  [d / ]d         - Previous/Next diagnostic

Copilot:
  <Tab>           - Accept suggestion
  <leader>g       - Toggle Copilot

Completion:
  <C-n>/<C-p>     - Navigate completions
  <CR>            - Accept completion

Editing:
  <leader>\       - Toggle comment
  <leader>y/p     - System clipboard yank/paste
```

---

Generated for Neovim configuration at `/home/twanh/.config/nvim`
