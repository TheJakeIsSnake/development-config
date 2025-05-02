local which_key = require("which-key")
local telescope = require('telescope.builtin')
local tree = require('nvim-tree.api')

local function shot_selection_to_clipboard()
	require("code-shot").shot(function(context)
		vim.system({
			"silicon",
			"--to-clipboard",
			"--language",
      context.file_type,
      "|", "clip.exe"
		},
      { stdin = context.selection }, function(result)
			if result.code == 0 then
				vim.notify("Shot code successfully", vim.log.levels.INFO)
			else
				vim.notify("Shot code failed", vim.log.levels.ERROR)
			end
		end)
	end)
end

which_key.add({
  {"<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Toggle comment" },
  {"<leader>ff", telescope.find_files, desc = "Telescope Find Files" },
  {"<leader>fw", telescope.live_grep, desc = "Telescope Grep Files" },
  {"<leader>fg", telescope.git_status, desc = "Telescope Git Status" },
  {"<C-n>", tree.tree.toggle, desc = "Toggle File Tree" },
  {"<leader>e", tree.tree.open, desc = "Open File Tree" },
  {"<tab>", "<cmd>bnext<cr>", desc = "Next Buffer" },
  {"<S-tab>", "<cmd>bprev<cr>", desc = "Previous Buffer" },
  {"<leader>x", "<cmd>bd<cr><cmd>bnext<cr>", desc = "Close Buffer" },
  {
    mode = {"v"},
    {"<leader>ss", shot_selection_to_clipboard, desc = "Screen Shot Selection" },
  }
})
