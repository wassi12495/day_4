require 'pry'
 class BankAccount
   @@account_number = 1
  def initialize(name, pin, balance=0)
    # keep teack of my name, pin, balance
    # add an account number to the account
    @name = name
    @pin = pin
    @balance = balance
    @account_number = @@account_number
    @@account_number += 1

  end
  attr_accessor :balance
  attr_accessor :name
  attr_accessor :account_number
  attr_accessor :pin

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount < @balance
      @balance -= amount
    else
      return "Not enough cash!"
    end
  end
end

class CheckingAccount < BankAccount
  #This class has all the same methods as BankAccount
end

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

my_account = BankAccount.new("Tim", 1234, 50)
paul = BankAccount.new("Paul", 1010, 600)
your_account = BankAccount.new("Maryl", 5678, 100)

Pry.start
