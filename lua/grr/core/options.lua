local opt = vim.opt

local is_wsl = vim.fn.has("wsl") == 1

-- WSL Clipboard support
if is_wsl then
	-- This is NeoVim's recommended way to solve clipboard sharing if you use WSL
	-- See: https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end

local group = vim.api.nvim_create_augroup("Markdown Wrap Settings", { clear = true })

vim.api.nvim_create_autocmd("insertEnter", {
	pattern = { "*.md", "*.wiki" },
	group = group,
	command = "setlocal textwidth=80",
})

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = true

opt.swapfile = false

opt.backup = false

opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

--opt.colorcolumn = "80"

opt.clipboard = "unnamedplus"
