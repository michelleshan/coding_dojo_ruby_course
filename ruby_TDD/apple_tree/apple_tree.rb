class Apple_tree
    attr_accessor :age
    attr_reader :height, :apple_count
    def initialize
        @age = 0
        @height = 100
        @apple_count = 0
    end
    def year_gone_by
        @age += 1
        @height = (@height*1.1).floor
        if @age < 3
            @apple_count = 0
        elsif @age > 10
            @apple_count = 0
        else
            @apple_count += 2
        end
    end
    def pick_apples
        @apple_count = 0
    end

end
