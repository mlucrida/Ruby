=begin
Try the following:

INTERMEDIATE:
    Inheritance
    Access Control
    Exception Handling
    Yeilds
    Modules / Namespaces
=end

# class initialized to test out inheritance 
class IntermediateRuby

    # testing access control on function
    private
        def __YieldTesting__(increment)
            number = 0
            puts("number is currently : #{number}")
            puts "Doing Stuff"
            number += increment
            yield number

            puts "Doing More Stuff"
            number += increment
            yield number

            puts "Doing Last Stuff"
            number += increment
            yield number
        end
    protected
        def ProtectedClass
            puts "Congratulations, you've accessed the protected section"
        end
    public 
        def YieldTesting(parameter = 0)
            __YieldTesting__(parameter) {|status| 
                unless status == 0
                    puts "number has changed to #{status}"
                else
                    puts "number has not changed"
                end
            }
        end
end

# test inheritance and overriding functions
class Inherit < IntermediateRuby
    def InheritFunction
        puts "This is the only function defined in the Inherit class"
    end

    def YieldTesting(parameter = 0)
        puts "Override YieldTesting. We don't care if number has changed or not"
        __YieldTesting__(parameter) {|status| puts "the number is #{status}"
        }
    end
    
    def AccessProtected
        self.ProtectedClass
    end

    # test exception handling
    def ExceptionHandling
        begin
            InheritFunction(PassParameter)
        rescue => exception
            puts "Why did you even try that?"
        ensure
            puts "You tried to pass a parameter to the InheritFunction ..."
        end

        begin
            self.AccessProtected
        rescue => exception
            puts "You shouldn't see this"
        else
            puts "That's much better"
        end
    end
end