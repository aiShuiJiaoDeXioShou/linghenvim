-- 设置插件
require("vimconfig.pluged")
-- 设置热键
require("vimconfig.config.hotkey")
-- 设置基础设置
require("vimconfig.config.config")
-- 设置中文
vim.cmd("source " .. BasePath .. "lua/vimconfig/config/ecode.vim")
