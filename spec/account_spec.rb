require 'account'

describe Account do
  subject(:account) {described_class.new}


  describe 'initialize' do
      it 'New account has a balance of 0' do
        expect(account.balance).to eq(0)
      end
    end
  end
