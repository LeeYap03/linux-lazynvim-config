# My Neovim Linux Configuration 🐧🚀
This repository contains my personal Neovim configuration, managed by the **lazy.nvim** plugin manager.

- **Arch btw** 😎
- I have an unupdated windows config that I need to spruce up [here](https://github.com/LeeYap03/windows-lazynvim-config/tree/main).

#### 🔧 Configuration Notes
- **LSPs, Linters, Formatters (Mason):**
  - Check the `ensure_installed` lines in [mason.lua](lua/lee/plugins/lsp/mason.lua) to see which Language Servers, Linters, and Formatters are installed.
  - Run `:Mason` in Neovim to see available tools.
- **Language Parsers (Tree-sitter):**
    - Check the `ensure_installed` lines in [treesitter.lua](lua/lee/plugins/treesitter.lua) for the language parsers that are active.
    - [See here for available tree-sitter parsers](https://github.com/tree-sitter/tree-sitter/wiki/List-of-parsers).

#### ⌨️ Note on Keybindings and Remaps
Because the configuration is ~~messy~~modular, remaps are split across multiple files. Note that some remaps are also defined directly within the plugin specification files when needed.

* **General Remaps:** [remaps.lua](lua/lee/core/remaps.lua)
* **Plugin-Specific Remaps:** [plugin_remaps.lua](lua/lee/core/plugin_remaps.lua)
* **LSP-Specific Remaps:** [lsp_remaps.lua](lua/lee/core/lsp_remaps.lua)

#### 🅱️ Font Used
- I use the [Cousine Nerd Font](https://www.nerdfonts.com/font-downloads) for proper rendering of icons and symbols.

 ---
 
## 🔌 Plugin List

### ⚙️ Plugin Manager
| Plugin | Config File |
| :--- | :--- |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | [lazy.lua](lua/lee/lazy.lua) |

### 🎨 Aesthetics & UI

| Plugin | Description | Config File |
| :--- | :--- | :--- |
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | The primary colorscheme used across the editor. | [catppuccin.lua](lua/lee/plugins/catppuccin.lua) |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Fast and highly customizable status line. | [lualine.lua](lua/lee/plugins/lualine.lua) |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Displays file tabs and buffers at the top of the editor. | [bufferline.lua](lua/lee/plugins/bufferline.lua) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | An elegant, customizable startup screen. | [alpha.lua](lua/lee/plugins/alpha.lua) |
| [noice.nvim](https://github.com/folke/noice.nvim) | Replaces the built-in command line and pop-ups with a more modern UI. | [noice.lua](lua/lee/plugins/noice.lua) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Visually displays indentation guides. | [indentblankline.lua](lua/lee/plugins/indentblankline.lua) |

### 🛠️ Core Editing & Language Support

| Plugin | Description | Config File |
| :--- | :--- | :--- |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Provides syntax highlighting and structural navigation. | [treesitter.lua](lua/lee/plugins/treesitter.lua) |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Automatically inserts and closes parentheses, quotes, etc. | [autopairs.lua](lua/lee/plugins/autopairs.lua) |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Smart commenting for any filetype. | [comment.lua](lua/lee/plugins/comment.lua) |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Adds/deletes/replaces surrounding characters. | [surround.lua](lua/lee/plugins/surround.lua) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Pop-up that shows key-bindings on-the-fly. | [whichkey.lua](lua/lee/plugins/whichkey.lua) |

### 💡 LSP, Completion, & Formatting

| Plugin | Description | Config File |
| :--- | :--- | :--- |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configurations for Neovim's built-in LSP client. | [lspconfig.lua](lua/lee/plugins/lsp/lspconfig.lua) |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Installer and manager for LSPs, formatters, and linters. | [mason.lua](lua/lee/plugins/lsp/mason.lua) |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | A powerful and lightweight completion engine. | [cmp.lua](lua/lee/plugins/cmp.lua) |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatter support using external tools managed by Mason. | [formatting.lua](lua/lee/plugins/formatting.lua) |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Asynchronous linter plugin for integrating external linters. | [linting.lua](lua/lee/plugins/linting.lua) |

### 🔍 Search & Workflow

| Plugin | Description | Config File |
| :--- | :--- | :--- |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Highly extensible fuzzy finder over lists. | [telescope.lua](lua/lee/plugins/telescope.lua) |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Simple file-list for quick jumping between frequently used files. | [harpoon.lua](lua/lee/plugins/harpoon.lua) |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostic/location/quickfix list manager. | [trouble.lua](lua/lee/plugins/trouble.lua) |
| [undotree](https://github.com/mbbill/undotree) | Visualizer for undo history/tree. | [undotree.lua](lua/lee/plugins/undotree.lua) |
| [auto-session](https://github.com/rmagatti/auto-session) | Automatic session saving and restoring. | [sessions.lua](lua/lee/plugins/sessions.lua) |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlights and lists TODO, FIX, HACK, etc., comments. | [todocomment.lua](lua/lee/plugins/todocomment.lua) |

### 🐙 Git Integration

| Plugin | Description | Config File |
| :--- | :--- | :--- |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Adds Git status markers (signs) to the sign column. | [gitsigns.lua](lua/lee/plugins/gitsigns.lua) |
| [lazygit.nvim](https://github.com/sindrets/lazygit.nvim) | Seamless integration with the Lazygit TUI application. | [lazygit.lua](lua/lee/plugins/lazygit.lua) |
