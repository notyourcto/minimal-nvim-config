local cmp = require("cmp")

cmp.setup({

	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	--keybindings
	mapping = cmp.mapping.preset.insert({

		["<C-space>"] = cmp.mapping.complete(),

		["<CR>"] = cmp.mapping.confirm({
			select = true,
		}),

		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
	}),
	-- sources subject to priority with sequence
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "luasnip" },
	},
})
