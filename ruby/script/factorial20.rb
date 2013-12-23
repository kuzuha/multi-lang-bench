module Factorial20
    def main()
        result = 1
        (2..20).each{|i|result *= i}
    end
    module_function :main
end
