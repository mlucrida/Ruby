require "./Ruby/BasicClass.rb"   # Basic Ruby Programming
require "./Ruby/IntermediateClass.rb"  # Advanced Ruby Programming

include Module1
include Module2

 Text = "Hello World!"

def main
    puts "#{Text}"
end

main

Module2.method
#Below are test calls to the classes

#puts Math("SUBTRACT",1.2,2)

#puts Boolean("AND",true,true)

#Iter(10)

#Basics = BasicRuby.new
#puts "#{Basics.Iter(10)}"

Intermediate = IntermediateRuby.new
SubClass = Inherit.new

#Intermediate.YieldTesting

SubClass.ExceptionHandling
#SubClass.InheritFunction
#SubClass.YieldTesting
