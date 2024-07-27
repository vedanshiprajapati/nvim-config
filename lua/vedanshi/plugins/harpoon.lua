local harpoon_setup = pcall(require, "harpoon")

if not harpoon_setup then
	return
end

local nnoremap = require("vedanshi.core.keymaps").nnoremap
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")
local harpoon_tmux = require("harpoon.tmux")

-- Key mappings for toggling the quick menu and switching to terminals
nnoremap("<C-Q>", harpoon_ui.toggle_quick_menu, {})
-- nnoremap("<CS-H>", function()
-- 	harpoon_tmux.gotoTerminal(1)
--end, {})
--nnoremap("<CS-J>", function()
--	harpoon_tmux.gotoTerminal(2)
-- end, {})
-- nnoremap("<CS-K>", function()
--	harpoon_tmux.gotoTerminal(3)
--end, {})
--nnoremap("<CS-L>", function()
--	harpoon_tmux.gotoTerminal(4)
--end, {})

-- Key mappings for adding files and navigating through files
nnoremap("<C-A>", harpoon_mark.add_file, {})
nnoremap("<C-H>", function()
	harpoon_ui.nav_file(1)
end, {})
nnoremap("<C-J>", function()
	harpoon_ui.nav_file(2)
end, {})
nnoremap("<C-K>", function()
	harpoon_ui.nav_file(3)
end, {})
nnoremap("<C-L>", function()
	harpoon_ui.nav_file(4)
end, {})
nnoremap("<C-N>", harpoon_ui.nav_next, {})
nnoremap("<C-P>", harpoon_ui.nav_prev, {})
