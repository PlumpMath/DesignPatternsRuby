class Trade
  def deposit(amount)
    raise NotImplementedError, "#{self.class} Method not Implemented"
  end

  def withdraw(amount)
    raise NotImplementedError, "#{self.class} Method not Implemented"
  end

  def balance
    raise NotImplementedError, "#{self.class} Method not Implemented"
  end

  def subject
    raise NotImplementedError, "#{self.class} Method not Implemented"
  end
end

class BankAccount < Trade
  attr_reader :balance

  def initialize(starting_balance = 0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

class VirtualAccountProxy < Trade
  def initialize(starting_balance = 0)
    @starting_balance = starting_balance
  end

  def deposit(amount)
    s = subject
    return s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    return s.withdraw(amount)
  end

  def balance
    s = subject
    return s.balance
  end

  def subject
    @subject || @subject = BankAccount.new(@starting_balance)
  end

end

# Who this run?

account = VirtualAccountProxy.new
account.deposit 50
account.withdraw 40
p account.balance

