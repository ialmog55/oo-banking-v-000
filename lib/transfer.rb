class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  def initialize(sender,receiver,amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end
  def execute_transaction
    if self.valid? && @sender.balance > amount
      @sender.balance -= amount
      @receiver.balance += amount
    elsif self.valid?
      return "transaction rejected. Please check your account balance."
    end
      
  end
end
