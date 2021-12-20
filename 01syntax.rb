#!/usr/bin/ruby -w
# -*- coding : utf-8 -*-

name="ruby"

puts "name"
puts 2 + 2 , name

# ruby中的空格
=begin
1 + 1 被解释为两变量相加
1 +1 被解释为一个1(+1)方法调用,空格在字符串输出时变得有意义.
=end

# ruby代码分割
=begin
换行或者分号，如果结尾为运算符或者为反斜杠则表示一个语句的延续.
=end
puts 1 +
1\
,"a"

# ruby中的document
=begin
print <<EOF
1.
2.
EOF
print <<"EOF";
1.
2.
EOF
#执行document中的内容
print <<`EOC`
command1
command2
EOF
# 多个document拼接
print <<foo, <<bar
1.
2.
foo
3.
4.
bar
=end
print <<foo, <<bar
    1. doc
    2. doc
foo
    3. doc
    4. doc
bar


# BEGIN、END 在代码执行前执行和代码执行后执行
BEGIN {
    puts "代码前执行的语句块"
}
END {
    puts "代码末尾执行的语句块"
}

# ruby中的注释
=begin
'#'：行注释
'=begin\n=end'：块注释
=end

# 向控制台输出
=begin
puts 带换行
print 不带换行
=end