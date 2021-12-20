#!/usr/bin/ruby -w
# -*- conding : utf-8 -*-
class People
    @@postion=0 #类变量
    def initialize
        puts "init..."
    end
    def run()
        @total=0 #实例变量
        puts "running..." 
        @@postion += 1
        puts "total postions: #@@postion"
        puts "实例变量total的值为 #@total"
        @total += 1
    end
    def step()
        puts "step..."
        @@postion += 1
        puts "total postions: #@@postion"
        puts "实例变量total的值为 #@total"
    end
end

p1=People.new
p1.run
p1.step
# puts p1.@postion
# puts p1.total
