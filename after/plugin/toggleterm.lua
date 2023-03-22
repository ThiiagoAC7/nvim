local function _shell()
    if vim.fn.has("win32") and not vim.fn.has("wsl") then
        print("adjaskldajsçdklasç")
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

