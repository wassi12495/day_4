require 'pry'

 class BankAccount
   @@account_number = 1

   attr_accessor :customer, :balance, :transactions
   attr_reader :account_number
   attr_writer :pin

  def initialize(customer, pin, balance=0)
    # keep teack of my name, pin, balance
    # add an account number to the account
    @customer = customer
    @pin = pin
    @balance = balance

    @account_number = @@account_number
    @@account_number += 1
    # Account has many transactions
    @transactions = []

  end


  def deposit(amount)
    @balance += amount
    transactions << Transaction.new(self, amount)

  end

  def withdraw(amount)
    if amount < @balance
      transactions << Transaction.new(self, -1 * amount)
      @balance -= amount
    else
      return "Not enough cash!"
    end
  end
end
