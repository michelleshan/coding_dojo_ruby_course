class Ninja
    attr_accessor :name, :weapon
    @@clansize = 0
    def initialize(name,weapon)
        @name = name
        @weapon = weapon
        @@clansize += 1
    end
    def clansize
        puts self
        @@clansize
    end
    def speak
        puts "I am #{@name}, silent as a leaf, and I will #{@weapon} you!"
        self
    end

end

class Sensei < Ninja
    attr_accessor :superPower

    def initialize(name,weapon,superPower)
        super(name,weapon)
        @superPower = superPower
    end

    def speak
        puts "I am #{@name}, you are not"
    end
end

bob = Ninja.new('Bob','sword')
splinter = Sensei.new('splinter','teeth','mutating')
puts splinter.superPower
splinter.speak
splinter.clansize
p splinter

# carl = Ninja.new('Carl','nunchucks')
# puts bob #=> #<Ninja:0x00000000bdd3f0>
# puts bob.clansize.speak.speak.speak #=> #<Ninja:0x00000000bdd3f0>, 2

# bob.speak
# carl.speak
