class Bank

  attr_accessor :balance, :history

  def initialize(balance=0)
    @balance = balance
    @history = []
  end

  def deposit(amount, time=Time.now)
    @balance += amount
    @history << [time,amount,@balance]
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_statement
    return @history
  end
end
