favorite_candy = %w[snickers starburst airheads]
counter = 1

# Ruby block 1: Recommended for multi line blocks
favorite_candy.each do |item| item
  puts "#{counter}: #{item}"
  counter += 1
end

# Ruby block 2: Recommended for single line blocks
favorite_candy.each { |item| puts "#{counter += 1} #{item}"}
