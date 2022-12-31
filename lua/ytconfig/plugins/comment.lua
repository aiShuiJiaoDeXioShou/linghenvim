-- 配置comment插件
local setup, comment = pcall(require, "Comment")
if not setup then
    return
end

comment.setup()