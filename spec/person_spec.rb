













    it 'funds are added to the account balance - deducted from cash' do
        subject.cash = 100
        subject.deposit(100)
        expect(subject.account.balance).to be 100
        expect(subject.cash).to be 0
    end

    it 'can whithdraw funds' do
        command = lambda { subject.whithdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm) }
        expect (command.call).to be_truthy
    end

    it 'withdraw is expected to raise an error if no ATM is passed in' do
        command = lambda { subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account) }
        expect { command.call }.to raise_error 'An ATM is required'
    end

    it 'funds are added to cash - deducted from account balance' do
        subject.cash = 100
        subject.deposit(100)
        subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm)
        expect(subject.account.balance).to be 0
        expect(subject.cash).to be 100
    end


end