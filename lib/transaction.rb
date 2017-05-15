class Transaction

  attr_reader :details

  def initialize(activity, amount)
    @details = {'date' => Time.now.strftime("%d/%m/%Y"),
                'activity' => activity,
                'amount' => amount}
  end

end
