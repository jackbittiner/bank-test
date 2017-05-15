require 'account'

describe Account do
  subject(:account) {described_class.new}


  describe 'initialize' do
      it 'has a balance of 0' do
        expect(account.balance).to eq(0)
      end

      it 'has no transactions' do
        expect(account.all_transactions).to eq []
      end
    end

    describe 'deposit' do
      it 'adds a specified amount to the accounts balance' do
        account.deposit(500)
        expect(account.balance).to eq(500)
      end

      it 'adds a deposit transaction to the all_transactions array' do
        account.deposit(500)
        expect(account.all_transactions.length).to eq (1)
      end
    end

    describe 'withdraw' do
      it 'withdraws a specified amount from the accounts balance' do
        account.deposit(500)
        account.withdraw(400)
        expect(account.balance).to eq (100)
      end

      it 'adds a deposit transaction to the all_transactions array' do
        account.deposit(500)
        account.withdraw(400)
        expect(account.all_transactions.length).to eq (2)
      end

      it 'cannot withdraw money more than the amount in the balance' do
        expect{account.withdraw(100)}.to raise_error 'Insufficient Funds'
      end
    end
  end
