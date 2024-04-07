return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")
		dashboard.section.header.val = {
[[                                                                                ]],
[[████████▄     ▄████████    ▄████████    ▄███████▄    ▄████████  ▄█     ▄████████]], 
[[███   ▀███   ███    ███   ███    ███   ███    ███   ███    ███ ███    ███    ███]], 
[[███    ███   ███    █▀    ███    █▀    ███    ███   ███    ███ ███▌   ███    ███]], 
[[███    ███  ▄███▄▄▄       ███          ███    ███   ███    ███ ███▌  ▄███▄▄▄▄██▀]], 
[[███    ███ ▀▀███▀▀▀     ▀███████████ ▀█████████▀  ▀███████████ ███▌ ▀▀███▀▀▀▀▀  ]], 
[[███    ███   ███    █▄           ███   ███          ███    ███ ███  ▀███████████]], 
[[███   ▄███   ███    ███    ▄█    ███   ███          ███    ███ ███    ███    ███]], 
[[████████▀    ██████████  ▄████████▀   ▄████▀        ███    █▀  █▀     ███    ███]],
[[                                                                      ███    ███]],
        }
		dashboard.section.top_buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("SPC f f", "󰈞  Find file"),
            dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim/<CR>"),
            dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
		}
   		dashboard.nvim_web_devicons.enabled = true
		-- disable MRU
		dashboard.section.mru.val = { { type = "padding", val = 0 } }
		-- disable MRU cwd
		--dashboard.section.mru_cwd.val = { { type = "padding", val = 0 } }
		alpha.setup(dashboard.opts)
	end,
}