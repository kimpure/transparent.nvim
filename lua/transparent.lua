--- @class Transparent
local M = {}

--- @private
M.auto_cmd_buf = nil

--- @private
M.is_toggle = false

--- @type string[]
M.groups = {}

--- @class options
--- @field groups? string[]
--- @field toggle? boolean

local default = {
	groups = {
		"Normal",
		"NormalNC",
		"Comment",
		"Constant",
		"Special",
		"Identifier",
		"Statement",
		"PreProc",
		"Type",
		"Underlined",
		"Todo",
		"String",
		"Function",
		"Conditional",
		"Repeat",
		"Operator",
		"Structure",
		"LineNr",
		"NonText",
		"SignColumn",
		"CursorLine",
		"CursorLineNr",
		"StatusLine",
		"StatusLineNC",
		"EndOfBuffer",
		"WinSeparator",
		"MsgArea",
		"Pmenu",
		"PmenuSel",

		"NeoTreeNormal",
		"NeotreeNormalNC",
		"NvimTreeNormal",

		"SatelliteBar",
		"SatelliteBackground",
	},
	toggle = true,
}

--- @param options? options
function M.setup(options)
	options = options or {}

	M.is_toggle = not (options.toggle or default.toggle)
	M.groups = options.groups or default.groups

	M.toggle()
end

function M.transpaprent()
	local cmd_content = ""
	local groups = M.groups

	for i = 1, #groups do
		cmd_content = cmd_content .. "highlight " .. groups[i] .. " guibg=NONE ctermbg=NONE\n"
	end

	vim.cmd(cmd_content)
end

function M.toggle()
	M.is_toggle = not M.is_toggle

	if M.is_toggle then
		M.transpaprent()
		M.auto_cmd_buf = vim.api.nvim_create_autocmd({
			"WinEnter",
			"BufWinEnter",
			"ColorScheme",
		}, {
			callback = M.transpaprent,
		})
	else
		vim.api.nvim_del_autocmd(M.auto_cmd_buf)
	end
end

return M
