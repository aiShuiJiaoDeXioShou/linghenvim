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
keymap.set("n", "<leader>se","<C-w>=") -- 还原分割窗口大小
keymap.set("n", "<leader>sx",":close<CR>") -- 关闭窗体

keymap.set("n", "<leader>to", ":tabnew<CR>") -- 创建一个新的窗口
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- 关闭窗口
keymap.set("n", "<leader>tn", ":tabn<CR>") -- 前往下一个窗口
keymap.set("n", "<leader>tp", ":tabp<CR>") -- 前往上一个窗口


-- 插件的快捷键部分
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
