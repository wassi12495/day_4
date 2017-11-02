
class Transaction

  @@id = 1
  attr_accessor :account, :memo
  def initialize(account, amount, memo = Time.now)

    @id = @@id
    @@id += 1

    @account = account
    @customer = @account.customer
    @balance = @account.balance
    @amount = amount
    @memo = memo

  end

  # def withdraw(amount)
  #   #@account.balance -= amount
  #   @balance -= amount
  #   @action = "Withdrew $#{amount}."
  # end
  #
  # def deposit(amount)
  #
  #   @balance += amount
  #   @memo = "Deposited $#{amount}."
  # end


  def update_balance
    @account.balance = @balance

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
