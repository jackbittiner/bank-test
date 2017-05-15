class Transaction

  attr_reader :details

  def initialize
    @details = {'date' => Time.now.strftime("%d/%m/%Y %H:%M")}
  end

end
