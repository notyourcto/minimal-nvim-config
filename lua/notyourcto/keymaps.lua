-- Keymap format:
-- keymap.set(mode, key, action)
--
-- mode  → where the mapping works
-- "n" = normal mode
-- "i" = insert mode
-- "v" = visual mode
-- "t" = terminal mode
--
-- key   → key you press
-- action → what happens when pressed
--
-- <leader> = Space (set in options.lua)
-- <C-x> = Ctrl + x
-- <S-x> = Shift + x
local keymap = vim.keymap

--Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap.set("n", "<leader>fa", function()
	require("telescope.builtin").find_files({
		hidden = true,
		no_ignore = true,
	})
end)
--terminal
keymap.set("n", "<leader>t", function()
	vim.cmd("vertical botright term")
	vim.cmd("startinsert")
end)
keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- yanking nd pasting shortcut
keymap.set("n", "<leader>p", '"+p')
keymap.set("v", "<leader>p", '"+p')
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')

-- formating
keymap.set("n", "<leader>cf", function()
	require("conform").format()
end)

--gitsigns
keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>")
keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>")
keymap.set("n", "<leader>gl", "<cmd>Gitsigns blame_line<cr>")

--git commands
keymap.set("n", "<leader>gg", "<cmd>Git<cr>")
keymap.set("n", "<leader>gd", "<cmd>Git diff<cr>")
keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>")

keymap.set("n", "<leader>g", "g_")

--insert mode navigation
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-a>", "<Home>")
keymap.set("i", "<C-e>", "<End>")

-- Undotree
keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
keymap.set("i", "<C-q>", function()
	vim.cmd("UndotreeToggle")
end)

-- quit, save,  file explorer
keymap.set("n", "<leader>w", "<cmd>w<cr>")
keymap.set("n", "<leader>q", "<cmd>q<cr>")
keymap.set("n", "<leader>e", "<cmd>Ex<cr>")
