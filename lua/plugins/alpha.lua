return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":e"),
			dashboard.button("f", "󰈞  > Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
		}
		dashboard.section.header.val = {
			-- 	[[                                                                                                                             ]],
			-- 	[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗                                                                          ]],
			-- 	[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║          _                                                   _      _    ]],
			-- 	[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║         | |_ ___  _ __ ___    _ __ ___   __ ___   _____ _ __(_) ___| | __]],
			-- 	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  _____  | __/ _ \| '_ ` _ \  | '_ ` _ \ / _` \ \ / / _ \ '__| |/ __| |/ /]],
			-- 	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ |_____| | || (_) | | | | | | | | | | | | (_| |\ V /  __/ |  | | (__|   < ]],
			-- 	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝          \__\___/|_| |_| |_| |_| |_| |_|\__,_| \_/ \___|_|  |_|\___|_|\_\]],
			-- [[                                                                                                                             ]],
			[[         ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗        ]],
			[[         ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║        ]],
			[[         ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║        ]],
			[[         ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║        ]],
			[[         ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║        ]],
			[[         ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝        ]],
			[[  _                                                   _      _     ]],
			[[ | |_ ___  _ __ ___    _ __ ___   __ ___   _____ _ __(_) ___| | __ ]],
			[[ | __/ _ \| '_ ` _ \  | '_ ` _ \ / _` \ \ / / _ \ '__| |/ __| |/ / ]],
			[[ | || (_) | | | | | | | | | | | | (_| |\ V /  __/ |  | | (__|   <  ]],
			[[  \__\___/|_| |_| |_| |_| |_| |_|\__,_| \_/ \___|_|  |_|\___|_|\_\ ]],
		}
		alpha.setup(dashboard.opts)
		local lines = {
			'"Theory and practice sometimes clash.',
			" And when that happens, theory loses.",
			' Every single time."',
			"",
			'"Bad programmers worry about the code."',
			" Good programmers worry about data",
			" structures and their relationships.",
			"",
			"                    ― Linus Torvalds",
		}
		dashboard.section.footer.val = lines
	end,
}
