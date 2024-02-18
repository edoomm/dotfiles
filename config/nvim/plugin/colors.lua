function SetColor(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)
end

SetColor()
