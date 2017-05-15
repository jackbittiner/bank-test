require_relative './transaction'

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
    @all_transactions << Transaction.new('withdrawal', -money, self.balance)
  end

  def statement
    self.all_transactions.each do |transaction|
      puts transaction.details
      puts '_______________'
    end
    puts 'Current Balance = ' + self.balance.to_s
  end

end
