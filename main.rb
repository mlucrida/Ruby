=begin
    Try the following:

    BASICS:
        print function X 
        operators X
        variables X
        functions x
        boolean x
        loops x
        classes x
        importing x 

    ADVANCE:

    RUBY SPECIFIC:

=end

require "./Ruby/BasicClass.rb"   # Basic Ruby Programming
require "./Ruby/IntermediateClass.rb"  # Advanced Ruby Programming

 Text = "Hello World!"

def main
    puts "#{Text}"
end

main

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
