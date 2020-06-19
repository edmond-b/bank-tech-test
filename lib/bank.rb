class Bank

  attr_accessor :balance, :history

  def initialize(balance=0)
    @balance = balance
    @history = []
  end

  def deposit(amount, time=Time.now)
    @balance += amount
    @history << [time,"||","||",amount,"||",@balance]
  end

  def withdraw(amount,time=Time.now)
    @balance -= amount
    @history << [time,"||",amount,"||","||",@balance]
  end

  def print_statement
    puts "date || credit || debit || balance"
    history.each { |transaction|
    print transaction }
    # return @history
  end
end
