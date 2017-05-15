class Account

  attr_reader :balance, :all_transactions

  def initialize
    @balance = 0
    @all_transactions = []
  end

end
