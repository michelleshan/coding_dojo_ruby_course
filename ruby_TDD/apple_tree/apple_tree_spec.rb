require_relative 'apple_tree'
RSpec.describe Apple_tree do
    before(:each) do
        @tree = Apple_tree.new
    end
    it "has an age attribute with getter and setter methods" do
        @tree.age = 3
        expect(@tree.age).to eq(3)
    end
    it "has a height attribute with only a getter method" do
        expect{@tree.height = 43}.to raise_error(NoMethodError)
    end
    it "has an apple count attribute with only a getter method" do
        expect{@tree.apple_count = 1}.to raise_error(NoMethodError)
    end
    context "has a year_gone_by method" do
        before(:each) do
            @tree.year_gone_by
        end
        it "adds one year to the age attribute" do
            expect(@tree.age).to eq(1)
        end
        it "increases the height by 10% of its current height" do
            expect(@tree.height).to eq(110)
        end
        it "raises its apple count by two" do
            expect(@tree.apple_count).to eq(0)
        end
        context "increases apple count by 2 when age is 4-10 years" do
            it "should not grow apples for first three years" do
                @tree.year_gone_by
                expect(@tree.apple_count).to eq(0)
                @tree.year_gone_by
                expect(@tree.apple_count).to eq(2)
            end
            it "should have a method called pick_apples that takes all of the apples off the tree" do
                2.times {@tree.year_gone_by}
                @tree.pick_apples
                expect(@tree.apple_count).to eq(0)
            end
            it "should not grow apples if it's older than ten" do
                10.times {@tree.year_gone_by}
                expect(@tree.apple_count).to eq(0)
            end
        end
    end
end