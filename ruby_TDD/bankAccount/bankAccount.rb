class BankAccount
    attr_reader :account_number, :checking, :savings
    @@num_accts = 0
    def initialize
        @@num_accts += 1
        @int = 0.01
        @acct_number = acct_number
        @checking = 0
        @savings = 0
        @total = @checking + @savings
    end
    private
    def acct_number
        @acct_number = (0..5).map {rand(0..9)}.join("")
    end
    public
    def checking
        # puts "$#{@checking}"
        @checking
    end
    def savings
        # puts "$#{@savings}"
        @savings
    end
    def deposit(account,amt)
        if account == "checking"
            @checking += amt
        elsif
            @savings += amt
        end
        self
    end
    def withdraw(account,amt)
        if account == "checking"
            if @checking >= amt
                @checking -= amt
            elsif @checking < amt
                raise "Insufficient funds in checking"
            end
        elsif account == "savings"
            if @savings >= amt
                @savings -= amt
            elsif @savings < amt
                raise "Insufficient funds in savings"
            end
        end
        self
    end
    def total
        @total = @checking + @savings
        # puts "$#{@total}"
    end
    def account_information
        puts "Bank Account #: #{acct_number}"
        puts "Total Balance: $#{@total}"
        puts "Checking Account Balance: $#{@checking}"
        puts "Savings Account Balance: $#{@savings}"
        puts "Interest Rate: #{@int}%"
    end
end