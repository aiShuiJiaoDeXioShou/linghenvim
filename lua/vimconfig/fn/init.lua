-- 这个包里面全部都是全局函数

-- 获取当前文件的路径
function CurrDir()
    os.execute("cd > cd.tmp")
    local f = io.open("cd.tmp", r)
    local cwd = f:read("*a")
    f:close()
    os.remove("cd.tmp")
    return string.sub(cwd, 1, -2)
end

-- 判断当前的操作系统
function IfOs()
    local BinaryFormat = package.cpath:match("%p[\\|/]?%p(%a+)")
    
    if BinaryFormat == "dll" then
        return "Windows"
    elseif BinaryFormat == "so" then
        return "Linux"
    elseif BinaryFormat == "dylib" then
        return "MacOS"
    end

end
