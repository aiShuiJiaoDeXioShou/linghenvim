" 开启底部状态栏
lua << END
require('lualine').setup()
-- 设置主题
options = { theme = 'gruvbox' }
END

" 设置nerdtree插件的常规命令
map <A-Right> :tabn<CR>
map <A-Left> :tabprevious<CR>
nmap qq :tabclose <CR>
nmap qqq :tabo<CR>:q<CR>
nmap qqo :tabo<CR>

" 文件搜索配置文件
" 全局查找文件,列出当前工作目录中的文件，根据.gitignore
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" 通过命令输出进行模糊搜索
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

" 显示历史打开过的文件
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>

nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" 在当前工作目录中搜索光标下的字符串
nnoremap <leader>fs <cmd>lua require('telescope.builtin').grep_string()<cr>