require("vimconfig.fn.hotkeyfn")
Map { "i", "jk", "<Esc>" }
Map { "", "<C-n>", ":NERDTreeToggle<CR>" }
Map { "n", "<space><space>", ":" }
Map { "i", "cv", "<C-n>" }
-- 编译运行文件
Map { "n", "r", ":call CompileRunGcc()<CR>" }

Map { "n", "sou", ":source % <CR>" }

-- 打开自带终端
Map { "n", "<A-`>", ":FloatermToggle <CR>" }
