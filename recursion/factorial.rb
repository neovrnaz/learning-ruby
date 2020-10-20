# Recursion

def factorial(number)
  if number <= 1
    number
  else
    number * factorial(number - 1)
  end
end
