require_relative 'bankAccount'
RSpec.describe BankAccount do
    before(:each) do
        @ba = BankAccount.new
        @ba.deposit("checking",100).deposit("savings",100)
    end
    it "has a getter method for retrieving the checking account balance" do
        expect(@ba.checking).to eq(100)
    end
    it "has a getter method that retrieves the total account balance" do
        expect(@ba.total).to eq(200)
    end
    it "has a function that allows the user to withdraw cash" do
        expect(@ba.withdraw("checking",10).checking).to eq(90)
        expect(@ba.withdraw("savings",10).savings).to eq(90)
    end
    it "raises an error if a user tries to withdraw more money than they have in the account" do
        expect{@ba.withdraw("checking",101)}.to raise_error("Insufficient funds in checking")
        expect{@ba.withdraw("savings",101)}.to raise_error("Insufficient funds in savings")
    end
    it "raises an error when the user attempts to retrieve the total number of bank accounts" do
        expect{@ba.num_accounts}.to raise_error(NoMethodError)
    end
    it "raises an error when the user attempts to set the interest rate" do
        expect{@ba.int = 0.02}.to raise_error(NoMethodError)
    end
end