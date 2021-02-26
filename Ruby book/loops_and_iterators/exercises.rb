# Ecerxice 1

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

# output > [2, 3, 4, 5, 6]

# Exercise 2

# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

# Exercise 3
# Write a method that counts down to zero using recursion.

def count(number)
  if number.negative?
    puts number
  else
    puts number
    count(number-1)
  end
end

count(10)
count(20)