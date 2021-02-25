def greeting(name)
  "Hello, #{name.capitalize!}. How are you doing?"
end

puts greeting 'pedro'

# EXERCISE 2

# 1. x = 2
# output 2

# 2. puts x = 2
# output nil
# 3. p name = "Joe"
# output Joe

# 4. four = "four"
# output 

# 5. print something = "nothing"
# output nil

# EXERCISE 3

def multiply(num1, num2)
  num1 * num2
end

p multiply(2, 5)

# EXERCISE 4

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# The code will print noting

# EXERCISE 5

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# EXERCISE 6

# ArgumentError: wrong number of arguments (1 for 2)
  # from (irb):1:in `calculate_product'
  # from (irb):4
  # from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# Wrong number of arguments. We need two arguments and not only one