# 简介

详情请见：

[Lua 文件 I/O | 菜鸟教程 (runoob.com)](https://www.runoob.com/lua/lua-file-io.html)

# 变量

lua里面分为全局变量和局部变量，下面是两种变量的区别

```lua
-- test.lua 文件脚本
a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6
```


# 循环

while 循环

```lua
while(condition)
do
   statements
end
```

for 循环

var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次  **"执行体"** 。exp3 是可选的，如果不指定，默认为1。

```lua
for var=exp1,exp2,exp3 do  
    <执行体>  
end  

for i=1,f(x) do
    print(i)
end
 
for i=10,1,-1 do
    print(i)
end
```



泛型 for 循环

通过一个迭代器函数来遍历所有值，类似 java 中的 foreach 语句。

Lua 编程语言中泛型 for 循环语法格式:

```lua
--打印数组a的所有值  
a = {"one", "two", "three"}
for i, v in ipairs(a) do
    print(i, v)
end 

#!/usr/local/bin/lua  
days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for i,v in ipairs(days) do  print(v) end  
```


# if条件控制

```lua
if( 布尔表达式 1)
then
   --[ 在布尔表达式 1 为 true 时执行该语句块 --]

elseif( 布尔表达式 2)
then
   --[ 在布尔表达式 2 为 true 时执行该语句块 --]

elseif( 布尔表达式 3)
then
   --[ 在布尔表达式 3 为 true 时执行该语句块 --]
else 
   --[ 如果以上布尔表达式都不为 true 则执行该语句块 --]
end
```



# 函数

函数定义

```lua
optional_function_scope function function_name( argument1, argument2, argument3..., argumentn)
    function_body
    return result_params_comma_separated
end
```



解析：

* **optional_function_scope:** 该参数是可选的制定函数是全局函数还是局部函数，未设置该参数默认为全局函数，如果你需要设置函数为局部函数需要使用关键字  **local** 。
* **function_name:**  指定函数名称。
* **argument1**, **argument2**, **argument3**..., **argumentn**: 函数参数，多个参数以逗号隔开，函数也可以不带参数。
* **function_body**: 函数体，函数中需要执行的代码语句块。
* **r**esult_params_comma_separated: 函数返回值，Lua语言函数可以返回多个值，每个值以逗号隔开。


这里的函数比较自由

```lua
function maximum (a)
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end

print(maximum({8,10,23,12,5}))
```


可选参数

Lua 函数可以接受可变数目的参数，和 C 语言类似，在函数参数列表中使用三点 **...** 表示函数有可变的参数。

```lua

function add(...)  
local s = 0  
  for i, v in ipairs{...} do   --> {...} 表示一个由所有变长参数构成的数组  
    s = s + v  
  end  
  return s  
end  
print(add(3,4,5,6,7))  --->25


function fwrite(fmt, ...)  ---> 固定的参数fmt
    return io.write(string.format(fmt, ...))  
end

fwrite("runoob\n")       --->fmt = "runoob", 没有变长参数。  
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", 变长参数为 1 和 2
```


# 字符串

## 字符串定义

字符串或串(String)是由数字、字母、下划线组成的一串字符。

Lua 语言中字符串可以使用以下三种方式来表示：

* 单引号间的一串字符。
* 双引号间的一串字符。
* **[[** 与 **]]** 间的一串字符。

```lua
a = "你是猪"
b = '你是猪'
c = [[
ni si da zhu 
你是猪
]]
```


## 字符串操作

Lua 提供了很多的方法来支持字符串的操作：

| 序号 | 方法 & 用途                                                                                                                                                                                                    |
| ---- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | **string.upper(argument):**``字符串全部转为大写字母。                                                                                                                                             |
| 2    | **string.lower(argument):**``字符串全部转为小写字母。                                                                                                                                             |
| 3    | **string.gsub(mainString,findString,replaceString,num)** 在字符串中替换。mainString 为要操作的字符串， findString 为被替换的字符，replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换），如： |

```
>string.gsub("aaaa","a","z",3);
zzza    3
```

    |
| 4    |**string.find (str, substr, [init, [plain]])**`<br/>`在一个指定的目标字符串 str 中搜索指定的内容 substr，如果找到了一个匹配的子串，就会返回这个子串的起始索引和结束索引，不存在则返回 nil。**init** 指定了搜索的起始位置，默认为 1，可以一个负数，表示从后往前数的字符个数。**plain** 表示是否以正则表达式匹配。以下实例查找字符串 "Lua" 的起始索引和结束索引位置：

```
>string.find("Hello Lua user","Lua",1) 
7    9
```

    |
| 5    |**string.reverse(arg)**`<br/>`字符串反转

```
>string.reverse("Lua")
auL
```

    |
| 6    |**string.format(...)**`<br/>`返回一个类似printf的格式化字符串

```
>string.format("the value is:%d",4)
the value is:4
```

    |
| 7    |**string.char(arg) 和 string.byte(arg[,int])**`<br/>`char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。

```
>string.char(97,98,99,100)
abcd
>string.byte("ABCD",4)
68
>string.byte("ABCD")
65
>
```

    |
| 8    |**string.len(arg)**`<br/>`计算字符串长度。

```
string.len("abc")
3
```

    |
| 9    |**string.rep(string, n)**`<br/>`返回字符串string的n个拷贝

```
>string.rep("abcd",2)
abcdabcd
```

    |
| 10   |**..**`<br/>`链接两个字符串

```
>print("www.runoob.".."com")
www.runoob.com
```

    |
| 11   |**string.gmatch(str, pattern)**`<br/>`返回一个迭代器函数，每一次调用这个函数，返回一个在字符串 str 找到的下一个符合 pattern 描述的子串。如果参数 pattern 描述的字符串没有找到，迭代函数返回nil。

```
>for word instring.gmatch("Hello Lua user","%a+")doprint(word)end
Hello
Lua
user
```

    |
| 12   |**string.match(str, pattern, init)**`<br/>`string.match()只寻找源字串str中的第一个配对. 参数init可选, 指定搜寻过程的起点, 默认为1。`<br/>`在成功配对时, 函数将返回配对表达式中的所有捕获结果; 如果没有设置捕获标记, 则返回整个配对字符串. 当没有成功的配对时, 返回nil。

```
>=string.match("I have 2 questions for you.","%d+ %a+")
2 questions

>=string.format("%d, %q",string.match("I have 2 questions for you.","(%d+) (%a+)"))
2,"questions"
```

 |


# 数组

定义：

```lua
array = {"Lua", "Tutorial"}

for i= 0, 2 do
   print(array[i])
end
```

多维数组

```lua
-- 初始化数组
array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- 访问数组
for i=1,3 do
   for j=1,3 do
      print(array[i][j])
   en
```


# Lua table(表)

table 是 Lua 的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等。

Lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能是 nil。

Lua table 是不固定大小的，你可以根据自己需要进行扩容。

Lua也是通过table来解决模块（module）、包（package）和对象（Object）的。 例如string.format表示使用"format"来索引table string。

---


## table(表)的构造

构造器是创建和初始化表的表达式。表是Lua特有的功能强大的东西。最简单的构造函数是{}，用来创建一个空表。可以直接初始化数组:

```lua
-- 初始化表
mytable = {}

-- 指定值
mytable[1]= "Lua"

-- 移除引用
mytable = nil
-- lua 垃圾回收会释放内存
```

当我们为 table a 并设置元素，然后将 a 赋值给 b，则 a 与 b 都指向同一个内存。如果 a 设置为 nil ，则 b 同样能访问 table 的元素。如果没有指定的变量指向a，Lua的垃圾回收机制会清理相对应的内存。

以下实例演示了以上的描述情况：

## 实例

```lua
-- 简单的 table
mytable = {}
print("mytable 的类型是 ",type(mytable))

mytable[1]= "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)
```

以上代码执行结果为：

```
mytable 的类型是     table
mytable 索引为1的元素是     Lua
mytable 索引为 wow 的元素是     修改前
alternatetable 索引为1的元素是     Lua
mytable 索引为 wow 的元素是     修改前
mytable 索引为 wow 的元素是     修改后
alternatetable 是     nil
mytable 索引为 wow 的元素是     修改后
mytable 是     nil
```

---

## Table 操作

以下列出了 Table 操作常用的方法：

| 序号 | 方法 & 用途                                                                                                                                                                                                     |
| ---- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | **table.concat (table [, sep [, start [, end]]]):** concat是concatenate(连锁, 连接)的缩写. table.concat()函数列出参数中指定table的数组部分从start位置到end位置的所有元素, 元素间以指定的分隔符(sep)隔开。 |
| 2    | **table.insert (table, [pos,] value):** 在table的数组部分指定位置(pos)插入值为value的一个元素. pos参数可选, 默认为数组部分末尾.                                                                           |
| 3    | **table.maxn (table)** 指定table中所有正数key值中最大的key值. 如果不存在key值为正数的元素, 则返回0。( **Lua5.2之后该方法已经不存在了,本文使用了自定义函数实现** )                                   |
| 4    | **table.remove (table [, pos])** 返回table数组部分位于pos位置的元素. 其后的元素会被前移. pos参数可选, 默认为table长度, 即从最后一个元素删起。                                                             |
| 5    | **table.sort (table [, comp])** 对给定的table进行升序排序。                                                                                                                                               |

接下来我们来看下这几个方法的实例。

### Table 连接

我们可以使用 concat() 输出一个列表中元素连接成的字符串:

## 实例

```lua
fruits = {"banana","orange","apple"}
-- 返回 table 连接后的字符串
print("连接后的字符串 ",table.concat(fruits))

-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))

-- 指定索引来连接 table
print("连接后的字符串 ",table.concat(fruits,", ", 2,3))
```

执行以上代码输出结果为：

```
连接后的字符串     bananaorangeapple
连接后的字符串     banana, orange, apple
连接后的字符串     orange, apple
```

### 插入和移除

以下实例演示了 table 的插入和移除操作:

## 实例

```lua
fruits = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits,2,"grapes")
print("索引为 2 的元素为 ",fruits[2])

print("最后一个元素为 ",fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])
```

执行以上代码输出结果为：

```
索引为4的元素为     mango
索引为2的元素为     grapes
最后一个元素为     mango
移除后最后一个元素为     nil
```

### Table 排序

以下实例演示了 sort() 方法的使用，用于对 Table 进行排序：

## 实例

```lua
fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k,v in ipairs(fruits) do
        print(k,v)
end

table.sort(fruits)
print("排序后")
for k,v in ipairs(fruits) do
        print(k,v)
end
```

执行以上代码输出结果为：

```
排序前
1    banana
2    orange
3    apple
4    grapes
排序后
1    apple
2    banana
3    grapes
4    orange
```

### Table 最大值

table.maxn 在 Lua5.2 之后该方法已经不存在了，我们定义了 table_maxn 方法来实现。

以下实例演示了如何获取 table 中的最大值：

## 实例

```lua
function table_maxn(t)
  local mn=nil;
  for k, v in pairs(t) do
    if(mn==nil) then
      mn=v
    end
    if mn < v then
      mn = v
    end
  end
  return mn
end
tbl = {[1] = 2, [2] = 6, [3] = 34, [26] =5}
print("tbl 最大值：", table_maxn(tbl))
print("tbl 长度 ", #tbl)
```

执行以上代码输出结果为：

```
tbl 最大值：    34
tbl 长度     3
```

> **注意：**
>
> 当我们获取 table 的长度的时候无论是使用 **#** 还是 **table.getn** 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。
>
> 可以使用以下方法来代替：
>
> ```
> function table_leng(t)
>   local leng=0
>   for k, v in pairs(t)do
>     leng=leng+1
>   end
>   return leng;
> end
> ```


# 面向对象

lua 语言是没有原生面向对象的，但是可以通过table+function 模拟出来。

这里只记录最常用，那些哈人的继承，重写方法，可以参考

[Lua 面向对象 | 菜鸟教程 (runoob.com)](https://www.runoob.com/lua/lua-object-oriented.html)

一个简单的实例

```lua
-- 元类
Rectangle = {area = 0, length = 0, breadth = 0}

-- 派生类的方法 new
function Rectangle:new (o,length,breadth)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.length = length or 0
  self.breadth = breadth or 0
  self.area = length*breadth;
  return o
end

-- 派生类的方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end
```

通过上面那个例子创建一个对象

```lua
r = Rectangle:new(nil,10,20)
```

通过 `.`来访问类的属性

```lua
print(r.length)
```

使用 `:` 访问类的成员

```lua
r:printArea()
```


# 错误处理

实例：

```lua
local function add(a,b)
   assert(type(a) == "number", "a 不是一个数字")
   assert(type(b) == "number", "b 不是一个数字")
   return a+b
end
add(10)
```


详情可见：

[Lua 错误处理 | 菜鸟教程 (runoob.com)](https://www.runoob.com/lua/lua-error-handling.html)
