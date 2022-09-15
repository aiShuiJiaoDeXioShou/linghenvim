-- 调用系统命令返回执行结果
function Popen_command_info(command)
    local command_info
    local command_info_fd = io.popen(command, "r")
    if command_info_fd then
        while true do
            command_info = command_info_fd:read("*l")
            if command_info then break end
            if not command_info then
                command_info = ""
                break
            end
        end
        command_info_fd:close()
    end
    return command_info
end

-- 调用系统命令直接打印输出
function ExecShell(command)
    os.execute(command)
end
