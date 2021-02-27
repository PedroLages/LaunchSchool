# Exercise 1
family = {  
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

members = family.select do |k, v|
  k == :brothers || k == :sisters
end

p members.values.flatten

# Exercise 2
# The difference is merge with ! is destrutive and without is not.
cat = {cat: 'miauu'}
dog = {dog: 'wouf'}

puts dog.merge(cat)
puts dog
puts dog.merge!(cat)
puts dog

# Excersice 3
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

# Excersice 4
bob = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
bob.each do |k, v|
  puts "Yeap is on the hash" if v == 'Bob'
end

# ||

unless bob.has_value?('Bob')
  puts 'we dont have it'
else
  puts 'we have it'
end 

# Exercise 4
# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order.

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
        'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
        'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end