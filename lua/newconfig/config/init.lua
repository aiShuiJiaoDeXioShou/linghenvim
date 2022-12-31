local set = vim.opt
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.number = true
set.mouse = "a"
set.autochdir = true
set.ruler = true
-- 禁止生成临时文件
set.langmenu = "zh_CN.UTF-8"
set.helplang = "cn"


-- 快捷键部分
Map { "i", "jk", "<Esc>" }
Map { "n", "<space><space>", ":" }
Map { "i", "cv", "<C-n>" }
-- 编译运行文件
Map { "n", "r", ":call Run()<CR>" }
Map { "n", "sou", ":source % <CR>" }
-- 分屏代码
-- 水平
Map { "n", "sv", ":vsp<CR>" }
-- 垂直
Map { "n", "sh", ":sp<CR>" }
-- 关闭
Map { "n", "sc", "<C-w>c" }
-- 关闭其他
Map { "n", "so", "<C-w>o" }
-- 比例控制（不常用，因为支持鼠标拖拽）
Map { "n", "s>", ":vertical resize +20<CR>" }
Map { "n", "s<", ":vertical resize -20<CR>" }
Map { "n", "s=", "<C-w>=" }
Map { "n", "sj", ":resize +10<CR>" }
Map { "n", "sk", ":resize -10<CR>" }
-- 窗口跳转
Map { "n", "<A-h>", "<C-w>h" }
Map { "n", "<A-j>", "<C-w>j" }
Map { "n", "<A-k>", "<C-w>k" }
Map { "n", "<A-l>", "<C-w>l" }
