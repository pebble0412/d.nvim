local M = {}

M.options = {
	colorscheme = true,
}
function M.config(opts)
	M.options = opts and vim.tbl_extend("force", {}, M.options, opts) or M.options
	M.setup(M.options)
end

function M.setup(opts)
	for k, v in pairs(opts) do
		v and require(tostring(table.concat("d.", tostring(k))))
	end
end

return M
