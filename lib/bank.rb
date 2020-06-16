class Bank

  attr_accessor :balance

  def initialize(balance=0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_statement
    return @balance
  end
end
