#!/usr/bin/ruby
# -*- conding : utf-8 -*-

#模块
=begin
1. 模块没有子类
2. 模块不能实例化
3. 模块只能被另一个模块定义
# 定义
module ModuleName
    statement...
end
# require
加载模块require filename(.rb不是必须的)
# include
在类中引用模块
=end

# 定义在09module文件中的模块
module ModuleA
    CONSTA = 10
    def ModuleA.display
        puts "display..."
    end
end

ModuleA.display

#Mixins
#实际上是include中实现的多重类
