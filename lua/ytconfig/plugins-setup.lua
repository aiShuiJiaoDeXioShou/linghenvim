local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")

if not status then 
  return
end

-- PackerSync 命令执行下载
return packer.startup(function(use)
  use('wbthomason/packer.nvim') -- packer 插件管理器

  -- 扩展lua功能的插件
  use("nvim-lua/plenary.nvim")

  -- 颜色主题插件
  use('bluz71/vim-nightfly-guicolors') -- nightfly 主题
  use("ellisonleao/gruvbox.nvim") -- gruvbox主题

  -- 管理分割窗口的插件
  use("christoomey/vim-tmux-navigator") -- 管理窗口的插件
  use("szw/vim-maximizer") -- vim最大或者最小当前窗口
  
  -- 工作流插件
  use("tpope/vim-surround")
  use("vim-scripts/ReplaceWithRegister")
  
  -- 注释插件，使用方法 gcc 或者 gc接你想要注释的行数，比如gc9j gc9k
  use("numToStr/Comment.nvim")
  
  -- 添加一个文件浏览器
  use("nvim-tree/nvim-tree.lua")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
