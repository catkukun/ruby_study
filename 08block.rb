#!/usr/bin/ruby
# -*- conding : utf-8 -*-

#块block
=begin
块是方法的补充，块名必须和对应方法名同名,调用块用yield
#定义块
block_name{
    |var1| pusts "向块中传递变量 #var1"
}
#&
&只能出现在方法中的最后一个参数
向方法显示传入块,参数名.call调用块
=end


def f1    
    yield 10
end

f1 {
    |var1| puts "向块中传递变量 #{var1}"
}

def f2(&block)
    block.call
end

f2{
    puts "f2"
}
