require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new}

  describe 'initialize' do
    it 'is created with todays date' do
      expect(transaction.details['date']).to eq Time.now.strftime("%d/%m/%Y %H:%M")
    end
  end
end
