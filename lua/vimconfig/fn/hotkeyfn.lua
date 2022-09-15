-- 简化lua的map配置问题
function Map(key)
    --get the extra options 设置默认选项
    local opts = { noremap = true }
    for i, v in pairs(key) do
        if type(i) == 'string' then
            opts[i] = v
        end
    end

    -- basic support for buffer-scoped keybindings
    -- 缓冲区作用域键绑定的基本支持
    local buffer = opts.buffer
    opts.buffer = nil

    if buffer then
        vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
    else
        vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
    end
end
