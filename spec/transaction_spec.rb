require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new('Withdrawal', 1000, 2000)}

  describe 'initialize' do

    it 'is created with todays date' do
      expect(transaction.details['date']).to eq Time.now.strftime("%d/%m/%Y")
    end

    it 'is initialized with an activity type' do
      expect(transaction.details['activity']).to eq 'Withdrawal'
    end

    it 'is initialized with an amount withdrawn or deposited' do
      expect(transaction.details['amount']).to eq 1000
    end

    it 'is initialized with the balance at the end of the transaction' do
      expect(transaction.details['balance']).to eq 2000
    end
  end
end
