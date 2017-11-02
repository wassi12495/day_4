require_relative 'bank_account'

class SavingsAccount < BankAccount

  def initialize(name, pin, balance)
    @withdrawals = 0
    super
  end

  def withdraw(amount)
    #@withdrawals ||= 0 # @withdrawals = @withdrawals || 0
    if @withdrawals > 6
      return "Too many withdrawals"
    else
      @withdrawals += 1
      super

    end
  end
end
