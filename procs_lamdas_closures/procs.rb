# Procs are blocks that can be reused

people_one = [51, 21, 45, 76, 32, 84, 32, 5]
people_two = [32, 21, 84, 37, 12, 3, 89, 53]

over_thirty = Proc.new { |age| age > 30 }
over_twenty_one = Proc.new { |age| age >= 21 }

group_one = people_one.select(&over_thirty)
group_two = people_two.select(&over_twenty_one)

puts group_two
