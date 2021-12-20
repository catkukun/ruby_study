#!/usr/bin/ruby -w
# -*- coding : utf-8 -*-

#if
if defined? var1 then
    puts "yes"
else
    puts "no"
end

print "yes"," ",__LINE__,"\n" if true
puts "yes" if false # if条件修饰,当右边的条件为false,左边的语句不执行
puts "unless" unless true # unless条件修饰,当右边为true,左边语句不执行

#case
$var1=1
case $var1
when 1,2,3,4 then
    puts "var1 == #$var1"
else
    puts "var1 == other value"
end

#while
while true do
    puts true
end
# code while true
#until
until false do
    puts false
end
# code until false
#for
# for i in lists do end
# break、next(continue)、redo重新开始迭代、retry(1.9之后不支持)rescuse从begin开始处重新执行
