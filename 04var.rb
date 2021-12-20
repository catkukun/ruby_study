#!/usr/bin/ruby  -w
# -*- coding : utf-8 -*-

# 变量
=begin
1. 局部变量
    以小写字母、下划线开头，函数或{}中生效
2. 全局变量(类、对象、方法内生效)
    以$开头，class外申明，全局有效
    未赋值时为nil
3. 实例变量
    以@开头，在方法中声明，类中每个方法中生效
4. 类变量
    以@@开头，类中有效
## 变量值的访问
在要访问的变量前面加#来访问变量的值
=end

#实例变量
class People
    ConstA=1
    def initialize(id, name, addr)
        @p_id=id
        @p_name=name
        @p_addr=addr
    end
    def display_p()
        puts "people's id: #@p_id"
        puts "people's name: #@p_name"
        puts "people's addres: #@p_addr"
        @p_addr="SiChuan NanChong"
        puts "people's address: #@p_addr"
    end
end

p1=People.new(1,"wang","SiChuan NanBu")
p1.display_p

# 常量
#以大写字母开头,定义在class外为全局，可以定义在class内但不能在方法中

# 伪变量
#self 当前方法接收器对象
#true、false、nil、__FILE__当前源文件名称、__LINE__当前行在源文件的编号

print __FILE__," ",__LINE__,"\n"
puts People::ConstA