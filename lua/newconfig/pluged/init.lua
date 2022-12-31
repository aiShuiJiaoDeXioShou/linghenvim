-- 这里使用nvim原生的插件
--这个地方管理Vim的插件配置
local Plug = vim.fn['plug#']
vim.call('plug#begin', PlugPath .. 'plugged')
    Plug 'skywind3000/vim-auto-popmenu'
    Plug 'skywind3000/vim-dict'
vim.call('plug#end')

vim.cmd[[
    " 设定需要生效的文件类型，如果是 "*" 的话，代表所有类型
    let g:apc_enable_ft = {"*":1}
    " 设定从字典文件以及当前打开的文件里收集补全单词，详情看 ':help cpt'
    set cpt=.,k,w,b
    " 不要自动选中第一个选项。
    set completeopt=menu,menuone,noselect
    " 禁止在下方显示一些啰嗦的提示
    set shortmess+=c
]]
