return {
	"Saecki/crates.nvim",
	event = { "BufRead Cargo.toml" },
	opts = {
		completetion = {
			cmp = { enabled = true },
		},
	},
}
