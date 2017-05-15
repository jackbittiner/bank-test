class Transaction

  attr_reader :details

  def initialize(activity, amount, balance)
    @details = {'date' => Time.now.strftime("%d/%m/%Y"),
                'activity' => activity,
                'amount' => amount,
                'balance' => balance}
  end

end
