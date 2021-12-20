#!/usr/bin/ruby -w
# -*- conding : utf-8 -*-

#方法
=begin
#定义
## 带两个参数
def method (var1,var2)
    expr...
end
## 带两个默认值的参数
def method (var1=1,var2=2)
    expr...
end
#调用
method 1,2
#返回值
每个方法都会返回一个值,默认为最后一个变量的值
return
#可变参数
def method (*vars)
    expr...
end
=end

#类中的方法
=begin
方法定义在类的外部,方法为private
如果方法定义在类中，方法为public
def Accounts.return_date # 不需要创建对象就可以运行的方法
end 
=end

class Accounts
    def reading_charge
        puts "reding_charge"
    end
    # def return_date
    #     puts "date"
    # end
    def Accounts.return_date #不需要创建对象就可以运行的类方法
        puts "return_date"
    end
end

Accounts.return_date

# alias 
=begin
给方法或变量定义一个别名
=end
# undef取消方法定义：用来独立修改父类方法，在自身内部访问调用时会破坏程序。