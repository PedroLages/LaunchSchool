# Exercise 2

def word_caps(word)
  word.size >= 10 ? word.upcase : 'Type a word 10 characters long'
end

puts word_caps('hello world')
puts word_caps('hello')

# Exercise 3
# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number.negative?
  "The #{number} is negative"
elsif number <= 50
  "The #{number} is between 0 and 50"
elsif number <= 100
  "The #{number} is between 51 and 100"
else
  "The #{number} is bigger then 100"
end

# Exercise 4
# Snippet 1 > false
# Snippet 2 > true "Did you get it right?"
# Snippet 3 > "Alright now!"

# Exercise 4
# We dont close the if statement with a end

# Exercise 5
# (32 * 4) >= "129" > error 
# 847 == '874' > false
# '847' < '846' > false 
# '847' > '846' > true
# '847' > '8478' > false
# '847' < '8478' > true