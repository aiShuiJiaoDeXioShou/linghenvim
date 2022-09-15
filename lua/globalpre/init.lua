-- 判断当前操作系统，设置config全局变量
require('vimconfig.fn')
NowOs = IfOs()
if NowOs == "Windows" then
    BasePath = "\t~/AppData/Local/nvim/"
    PlugPath = "~/AppData/Local/nvim/"
    Home = PlugPath
elseif NowOs == "Linux" then
    BasePath = "\t~/.config/nvim/"
    PlugPath = "~/.config/nvim/"
    Home = PlugPath
end
