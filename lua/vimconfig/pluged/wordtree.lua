require("vimconfig.fn.hotkeyfn")
require("vimconfig.fn.command")
-- 仙人扶我顶，结发共长生
-- 计算某个中文的字符串数量
-- 使用os.execute()调用系统api，自动输出默认值

function CoutStr(str)
   
end

-- 为上述函数配置快捷键
Map { "n", "wr", ": lua CoutStr()" }
