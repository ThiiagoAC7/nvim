return {
	{
		-- navigation between nvim/wezterm splits
		"mrjones2014/smart-splits.nvim",
		lazy = false,
		keys = {
            -- stylua: ignore start
            -- Resizing splits
            { "<A-S-h>", function() require("smart-splits").resize_left() end, mode = "n", desc = "Resize split left" },
            { "<A-S-j>", function() require("smart-splits").resize_down() end, mode = "n", desc = "Resize split down" },
            { "<A-S-k>", function() require("smart-splits").resize_up() end, mode = "n", desc = "Resize split up" },
            { "<A-S-l>", function() require("smart-splits").resize_right() end, mode = "n", desc = "Resize split right" },

            -- Moving between splits
            { "<A-h>", function() require("smart-splits").move_cursor_left() end, mode = "n", desc = "Move cursor left" },
            { "<A-j>", function() require("smart-splits").move_cursor_down() end, mode = "n", desc = "Move cursor down" },
            { "<A-k>", function() require("smart-splits").move_cursor_up() end, mode = "n", desc = "Move cursor up" },
            { "<A-l>", function() require("smart-splits").move_cursor_right() end, mode = "n", desc = "Move cursor right" },
			-- stylua: ignore end
		},
	},
}
