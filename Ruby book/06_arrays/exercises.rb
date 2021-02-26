# Exercise 1
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |n|
  unless number == n
    puts "Ther #{number} is on the array."
    break
  end
end

# Exercise 2
# How do you return the word "example" from the following array?

arr1 = [["test", "hello", "world"],["example", "mem"]]
p arr1[1][0]
p arr1.last.first

# Exercise 3
# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5)
# > 3
# 2. arr.index[5]
# > error
# 3. arr[5]
# > 8

# Exercise 4
string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19] # nil

# Exercise 5
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
# > ['bob', 'joe', 'susan', 'jody']

# Exercise 6
arr = ['bob', 'joe', 'susan', 'margaret']

arr.each_with_index do |n, i|
  puts "#{i + 1}: #{n}"
end

# Exercise 7
arr2 = [1, 2, 3, 4, 5]
arr3 = []
arr2.map do |i|
  arr3 << i + 2
end

p arr3
p arr2