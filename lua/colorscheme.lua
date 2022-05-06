vim.g.tokyonight_style = "storm" --default: storm. other settings day night vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent=true
vim.g.tokyonight_transparent_sidebar=true

local colorscheme = "tokyonight"
--tokyonight
--jellybeans

local status_ok,_=pcall(vim.cmd,"colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme" .. colorscheme .. "not found!")
  return
end



