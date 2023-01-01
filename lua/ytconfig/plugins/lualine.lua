local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- 设置底层状态栏的主题色
local lualine_nightfly = require("lualine.themes.nightfly")

-- 新建一个表格储存不同的颜色值
local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- 在不同的模式下面显示不同的状态
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}

lualine.setup({
  options = {
    theme = lualine_nightfly,
  },
})
