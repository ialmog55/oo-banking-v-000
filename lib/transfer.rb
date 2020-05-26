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
end
