vim.g.mapleader = " " -- 设置领导键

local keymap = vim.keymap 

-- 常用的快捷键
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>") -- 清除搜索时的高亮
keymap.set("n", "x", '"_x') -- 在普通模式下删除不会复制进寄存器

keymap.set("n", "<leader>+", "<C-a>") -- 增加数字
keymap.set("n", "<leader>-", "<C-x>") -- 减少数字

keymap.set("n", "<leader>sv","<C-w>v") -- 垂直分割窗体
keymap.set("n", "<leader>sh","<C-w>s") -- 横向分割窗体
keymap.set("n", "<leader>se","<C-w>=") -- 创建一个新的
keymap.set("n", "<leader>sx",":close<CR>") -- 关闭窗体
