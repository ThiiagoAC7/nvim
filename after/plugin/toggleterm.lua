local function _shell()
	if vim.loop.os_uname().sysname == "Windows_NT" then
		return "pwsh"
	end
end

require("toggleterm").setup({
	shell = _shell(),
	open_mapping = "<C-t>",
	direction = "float",
	float_opts = {
		border = "rounded",
	},
	close_on_exit = true,
})
