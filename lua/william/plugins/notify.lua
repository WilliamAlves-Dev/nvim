return {
	"rcarriga/nvim-notify",

	config = function()
		require("notify")("Welcome to my neovim setup!")
    vim.notify = require("notify")
	end,
}
