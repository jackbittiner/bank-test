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
  end
