class Project
    attr_accessor :name, :description
    def initialize(name,description)
        @name = name
        @description = description
    end

    def name
        puts @name
    end

    def elevator_pitch
        puts "The project is called #{@name}, and the description is #{@description}"
    end

end
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"