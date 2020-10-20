def run_a_proc(p)
  puts "Starting to run a proc"
  p.call
  puts "Finished running the proc\n\n"
end
def run_our_program
  # If proc comes first, lambda never prints out
  #
  # Lambda returns from the lambda
  # A Proc returns from the current method
  run_a_proc lambda { puts "I'm a lambda"; return }
  run_a_proc proc { puts "I'm a proc"; return } # run_a_proc is being returned here
end
run_our_program
