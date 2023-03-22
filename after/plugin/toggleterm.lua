local function _shell()
	if vim.fn.has("win32") then
		return "pwsh"
	end
	return vim.o.shell
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
