# what is the data type?
# what is the value?

x = 3

message_name = :+

x.send(message_name, 2) === x.+(2)

names = ["Derek", "Emily", "Yuta", "Marty"]


# p names[1]
# p names.[](1)
# p names.send(:[], 1)
message_to_send_string = "count"
send_message_symbol = message_to_send_string.to_sym

# p names.send(send_message_symbol)

# Objects do stuff
# Objects interact with one another
# Objects have properties
# We use objects


bank_account = { routing_num: 123456789, balance: 100 }

# p bank_account.class == Hash
#
# p bank_account[:balance] == 100

class BankAccount
  attr_accessor :balance
  # attr_reader :balance
  @@all = []

  def self.all
    p self
    @@all
  end

  def all
    p self
  end

  def initialize(balance, routing_number)
    if routing_number.class != Integer
      raise ArgumentError.new("YOu must provide an integer for the routing number.")
    end
    @balance = balance
    @routing_number = routing_number
    @@all << self
  end

  def deposit(deposit_amount)
    self.balance += deposit_amount
    # self.balance = self.balance + deposit_amount
  end

  def withdraw(deposit_amount)
    p "in method: "
    p self
    self.balance -= deposit_amount
  end

  # def balance
  #   @balance
  # end

  # def balance=(new_balance)
  #   @balance = new_balance
  # end

  def routing_number
    @routing_number
  end

  def balance_as_float
    @balance.to_f
  end

end

account = BankAccount.new(100, "not a good strategy, Cotton")
account_two = BankAccount.new(125, 123456789)
account_three = BankAccount.new(75, 123456789)

# p account
# p account.balance
# account.withdraw(50)
# p account.all
# p account.methods.sort

BankAccount.all
