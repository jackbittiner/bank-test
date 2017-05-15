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
    end
  end
