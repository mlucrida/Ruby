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
=end

## Class that wraps basic ruby code into a class
class BasicRuby

    # function that takes a string parameter (operation) and two numbers (num)
    # to apply the specified math operation
    #
    # used to test the following : 
    #   # defining functions/methods
    #   # passing parameters
    #   # default parameters
    #   # if statements
    def Math(operation, num1 = 0, num2 = 0)
        puts operation
        if operation == "ADD"
            return num1 + num2
        
        elsif operation == "SUBTRACT"
            return num1 - num2
        else
            puts "WHAT?"
        end
        return 0
    end

    # function takes a string parameter (operation) and two numbers
    # to apply the specified boolean operation
    #
    # used to test the following :
    #   # case statements
    #   # boolean operations
    def Boolean(operation, val1, val2)
        puts operation
        case operation
        when "AND"
            return val1 && val2
        when "OR"
            return val1 || val2
        else
            puts "WHAT?"
        end
        return false
    end

    # function takes a number to specify iterations for a loop
    #
    # used to test the following :
    #   # loop syntax
    #   # create array
    #   # modify array
    #   # block evaluation
    def Iter(val)

        # initialize block array
        nums = Array.new(val) {|e| e = e * (3*val)}
        $i = 0
        while $i < val do
            initial_val = nums[$i]

            # modify array
            new_val = initial_val - val
            puts("nums[#$i] : #{initial_val} => #{new_val}")
            $i += 1
        end
        return nums
    end
end