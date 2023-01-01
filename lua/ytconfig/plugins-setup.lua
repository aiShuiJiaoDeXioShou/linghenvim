local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
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

  -- icons
  use("kyazdani42/nvim-web-devicons")

  -- 漂亮的显示行
  use("nvim-lualine/lualine.nvim")

  -- 模糊文件查找器
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  -- 配置代码提示插件
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path") -- 路径补全

  -- 代码片段snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- lsp服务
  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  if packer_bootstrap then
    require('packer').sync()
  end
end)
