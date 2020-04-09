require "./lib/account.rb"

class Person 

        attr_accessor :name, :account, :cash

        def initialize(attrs= {})
            @name=set_name(attrs[:name])
            @cash=250
            @account=nil
            puts "Person created" # Information on terminal
        end

        def create_account 
            @account = Account.new(owner: self)
            puts "Account created for #{self.name} with 250 balance with pincode:#{self.account.pin_code}"
        end

        def deposit(amount)
            @account == nil ? missing_account : deposit_funds(amount)
        end

        def withdraw(args={})
            @account == nil ? missing_account : withdraw_funds(args)
        end

        private

        def set_name(obj)
            obj== nil ? (raise "A name is required"): @owner = obj
        end

        def missing_account
            raise RuntimeError, "No account present"
        end

        def deposit_funds(amount)
            @cash -= amount
            @account.balance += amount
        end

        def withdraw_funds(args={})
            args[:atm]== nil ? (raise 'An ATM is required'): atm = args[:atm]
            atm_output=atm.withdraw(args[:amount], args[:pin], args[:account])
            atm_output[:status]==false ? atm_output[:message]: @cash+=args[:amount]
        end

end