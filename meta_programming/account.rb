
class Account
  attr_accessor :name, :address, :email, :notes

  def assign_values(values)
    values.each_key do |k|
      self.send(k)
    end
  end
end

user_info = {
    :name => "Richard",
    :address => "312 Random St.",
    :email => "richard@gmail.com",
    :notes => "Silly Customer"
}

account = Account.new
account.name = user_info[:name]
account.address = user_info[:address]
account.email = user_info[:email]
account.notes = user_info[:notes]

p account.assign_values(:name => "Max")
