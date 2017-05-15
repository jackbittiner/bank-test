require 'transaction'

class Account

  attr_reader :balance, :all_transactions

  def initialize
    @balance = 0
    @all_transactions = []
  end

  def deposit(money)
    @balance += money
    @all_transactions << Transaction.new('deposit', money, self.balance)
  end

  def withdraw(money)
    raise 'Insufficient Funds' if money > self.balance
    @balance -= money
  end

end
