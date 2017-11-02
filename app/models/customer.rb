
class Customer

  attr_accessor :name, :email, :phone

  def initialize(name, email='', phone = '')
    @name = name
    @email = email
    @phone = phone
    @accounts = []
  end
  
  def accounts
    # What are all my accounts?
    @accounts

  end

  def add_savings_account(pin, balance = 0)
    @accounts << SavingsAccount.new(self, pin, balance)
  end

end
