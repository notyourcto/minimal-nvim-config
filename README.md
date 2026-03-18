# minimal-nvim-config

A clean and  minimal neovim setup built from scratch using **lazy.nvim**.

This config is ideal for ppl who:
- dont want fully pre configured setups like lazyvim or Nvchad
- dont want to start from zero
- want simple, understanable base to build on

---

## Installation

### 1. Backup your existing config (incase u have 1)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```
### 2. Clone this repo

```bash
git clone https://github.com/notyourcto/minimal-nvim-config ~/.config/nvim
```
### 3. Open neovim

```bash
nvim
```
Lazy.nvim will install plugins automatically

---

## Requirements

make sure u have these installed:
- Neovim **nightly (0.12.+)**
- Git
- for formatting support u should also have stylua, clang, shfmt, black, prettier.

> This config uses the new Neovim LSP API ('vim.lsp.enable') and latest realease of tree-sitter which may not on stable releases.

---

## Features 

- Plugin Manager: Lazy.nvim
- Treesitter (Syntax highlighting nd indentation)
- Telescope (fuzzy finder)
- LSP (mason + builtin neovim LSP)
- Autocomplete (nvim-cmp + luasnip)
- Statusline (lualine)
- Formatting (conform.nvim)
- Git integration (gitsigns +fuguitive)
- Undo history (undo history)
- Smooth cursor animation (smear-cursor)
- Native file explorer

---

## Structure


```
.
├── init.lua
└── lua/
    └── notyourcto/
        ├── options.lua
        ├── keymaps.lua
        ├── plugins.lua
        ├── lsp.lua
        └── cmp.lua
```

---

## Philosophy 

This config is intentionally:
- minimal but usable
- readable and beginner friendly
- easy to extend
  
it is meant to help and use neovim from day 1, and not hide it behind abstraction.

---

## Notes
> Read `keymaps.lua` - it contains comments explaining how mappings work.
> This will help u understand how to customize your own setup.

---

## Inspiration

> Built while learning Neovim and configuring everything from scratch.
