1.upto(31) { |num| puts "#{'fizz' if num % 3 == 0} #{'buzz' if num % 5 == 0} #{num if num % 3 != 0 && num % 5 != 0}" }
