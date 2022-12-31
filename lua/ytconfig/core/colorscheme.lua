local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("没有找到该配色方案!")
  return
end
