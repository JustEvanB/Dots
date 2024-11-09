local vim = vim
local Plug = vim.fn['plug#']

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.call('plug#begin')

Plug('lervag/vimtex')

Plug('Mofiqul/vscode.nvim')

Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

Plug('dstein64/nvim-scrollview')

Plug('mhinz/vim-startify')

Plug('lewis6991/gitsigns.nvim')
Plug('romgrk/barbar.nvim')

vim.call('plug#end')

vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Underline `@markup.link.*` variants
    underline_links = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
-- require('vscode').load()

-- load the theme without affecting devicon colors.

vim.cmd.colorscheme "vscode"

require("nvim-tree").setup({
	view = {
		width = 20,
	},
	filters = {
		dotfiles = true,
	},
})

vim.cmd('source /home/ghost/.config/nvim/vimscript.vim')

vim.g.vimtex_view_method = "okular"

vim.cmd('set nu')
