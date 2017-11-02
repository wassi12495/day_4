
class Transaction

  @@id = 1
  attr_accessor :account, :memo
  def initialize(account)
    @account = account
    @customer = @account.customer
    @balance = @account.balance
    @id = @@id
    @@id += 1
    @memo = ""
  end

  def withdraw(amount)
    #@account.balance -= amount
    @balance -= amount
    @action = "Withdrew $#{amount}."
  end

  def deposit(amount)

    @balance += amount
    @memo = "Deposited $#{amount}."
  end


  def update_balance
    @account.balance = @balance
    @account.transactions << self
  end

end


  # actions that affect my balance
  #Each Transaction
  # belongs to BankAccount
  # customer
  # balance (+ / -)
  # memo (what its for)
  # updated balance
  # id

  # SOMEWHERE else
  # history of transactions for one account
