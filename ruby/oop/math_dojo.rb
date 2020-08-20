class MathDojo
    def initialize()
        @value = 0
    end
    def add(*numbers)
        numbers.each {|num| @value += num}
        self
    end
    def subtract(*numbers)
        numbers.each {|num| @value += num}
        self
    end
    def result
        puts @value
    end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15