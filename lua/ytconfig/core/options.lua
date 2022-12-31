local opt = vim.opt

-- 配置相对行号
opt.relativenumber = true
opt.number = true

-- 配置tabs缩进和制表符
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 配置自动换行
opt.wrap = false

-- 配置字符搜索设置
opt.ignorecase = true
opt.smartcase = true

-- 突出显示当前行号
opt.cursorline = true

-- 有关主题的配置
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- 设置退格键
opt.backspace = "indent,eol,start"

-- 设置剪贴板配置与炒作系统剪贴板正相关
opt.clipboard:append("unnamedplus")

-- 配置多窗口
opt.splitright = true
opt.splitbelow = true

-- 将这种 a-bb 型单词写法中 - 也视作为单词的一部分
opt.iskeyword:append("-")
