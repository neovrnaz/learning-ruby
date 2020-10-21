# If you want to create a new file you can use "File.open" with the
# parameters such as the title and extension as well as how the
# open mode which determines how your variables will interact
# with the document
File.open("example.txt", "w+") do |file|
  print "Enter your name: "
  name = gets.chomp
  file.puts "Name: #{name}"

  print "Enter your email: "
  email = gets.chomp
  file.puts "Email: #{email}"
end
