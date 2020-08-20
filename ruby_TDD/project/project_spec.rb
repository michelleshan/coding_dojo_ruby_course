require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
        before(:each) do 
        @project1 = Project.new('Project 1', 'description 1', 'owner 1') # create a new project and make sure we can set the name attribute
        @project2 = Project.new('Project 2', 'description 2', 'owner 2')
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
        expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end 
    it 'has a method elevator pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq('Project 1, description 1')
        expect(@project2.elevator_pitch).to eq('Project 2, description 2')
    end
    it 'has a getter and a setter for owner attribute' do
        @project1.owner = "Changed Owner"
        expect(@project1.owner).to eq("Changed Owner")
    end
    it 'has a method task that returns the tasks' do
        expect(@project1.tasks).to eq([])
    end
    it 'has a method add_tasks that adds a task into the list of tasks' do
        @project1.add_tasks('task')
        expect(@project1.tasks).to eq(['task'])
    end
end