-- 设置基础配置
local set = vim.opt
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.number = true
set.ruler = true
set.cursorline = true
set.mouse = "a"
set.selection = "exclusive"
set.selectmode = { "mouse", "key" }
set.showmatch = true
set.hlsearch = true

-- 设置主题与主题色
set.background = 'dark'
vim.cmd [[
    colorscheme gruvbox   
]]
