#!/usr/bin/ruby
# -*- conding : utf-8 -*-
# 数据类型
#整型integer
=begin
#整数范围从 -230 到 230-1，在这个范围内的整数是类 Fixnum 的对象， 
#当整数值大于或等于2的30次方时（ -262 到 262-1），会自动转化为 Bignum 类型
=end
print "16进制 ",0xb,"\n"
print "8进制 ",037,"\n"
print "2进制 ",0b01101,"\n"
print "字符编码 ","a".ord,"\n"
print "带千分符 ",2_000_000,"\n"
#浮点型float
print "浮点数 ",0.1,"\n"
#算数操作符
puts 1+0
puts 3-1
puts 3*1
puts 8/2
puts 2**2
#字符串
puts '"abcd \\"'
puts "替换为字符串\"\#{}\": #{1+1+1}"
#数组
=begin
定义：arr=[]、Array.new、Array.new(20)、Array.new(4,"字面量")、Array.new(4){|e|e=e*2}
    Array.[](1,2,3,4)
    Array[1,2,3,4]
    Array(0..9)
打印：puts arr
    puts "#{arr}" #序列化为一个字符串
追加元素：arr<<1
数组的长度和大小：arr.length、arr.size
遍历：
arr.each do |i|
    puts i
end
=end
##定义数组
arr1=[]
##追加元素
arr1<<1
arr1<<"a"
arr1<<"b"
arr1<<3
print arr1,"\n"
arr1.each do |i|
    puts i
end
##修改数组第一个元素的值
arr1[0]=2
puts "#{arr1[0]}"
##数组内建方法
puts arr1.at(2) #返回第三个元素
arr2=Array[1,2,3,4,5]
arr3=Array(0..9)
puts "#{arr2&arr3}" #返回两个数组公共的元素集合,新数组
##...内建方法还有很多
#hash类型
=begin
1. 每个元素对用=>拼接对应关系,用','分割多个键值对。ruby中任意类型都可以当做hash的键或值
2. hansh创建
    Hash.new # nil类型
    Hash.new("value") # 带默认值的hash,访问的键不存在对应的值时,返回默认值
    Hash["a"=>100,"b"=>200,] # 带键值对
3. 获取key
    h.keys
4. 设置hash的默认值
    h.default = obj
5. 删除一个键值对
    h.delete(key)
    ...
=end
h1=Hash.new
puts "#{h1[0]}" # 返回空白
h1=Hash.new("默认值")
puts "#{h1[0]}" # 返回'默认值'
#范围类型range
# beginNum..endNum 开始数值..结尾数值