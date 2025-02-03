function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils("catppuccin")

-- local function set_colorscheme(mode)
--     if mode == "dark" then
--         vim.cmd("colorscheme rose-pine-moon")
--     elseif mode == "light" then
--         vim.cmd("colorscheme rose-pine-dawn")
--     else
--         print("Invalid mode passed to set_colorscheme: " .. tostring(mode))
--     end
-- end
-- 
-- return {
--     set_colorscheme = set_colorscheme
-- }


