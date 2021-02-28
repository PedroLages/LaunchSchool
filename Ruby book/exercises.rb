# Exercise 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr.select { |n| puts n }

# Exercise 2
# Same as above, but only print out values greater than 5

# new_arr = arr.each { |n| p n if n >= 5 }

# Exercise 3
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

odd_arr = arr.select { |n| n .odd? } 
# p odd_arr

# Exercise 4
# Append 11 to the end of the original array. Prepend 0 to the beginning.
# Append
arr << 11
# Prepend
arr.unshift(0)

# Exercise 5
# Get rid of 11. And append a 3.

arr.pop
arr.push(3)

# Exercise 6
# Get rid of duplicates without specifically removing any one value.
arr.uniq

# Exercise 7
# What's the major difference between an Array and a Hash?
# - An Hash contains a key value pair

# Exercise 8
# Create a Hash, with one key-value pair, using both Ruby syntax styles.
hash_one = { :name => 'Pedro'}
hash_two = { name: 'Pedro'}

# Exercise 9
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h.delete_if { |k, v| v > 3.5 }

# Exercise 10
# Can hash values be arrays? Can you have an array of hashes? (give examples)
# > Yes. We values can be arrays and we can have a array of hashes
hash = { names: ['john', 'carl', 'pedro'] }
arr = [ { name: 'john' }, {name: 'carl' }, { name: 'pedro'} ]

# Exercise 11
# contact_data = [
#   ["joe@email.com", "123 Main st.", "555-123-4567"],
#   ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
# ]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# # # Exercise 12
# contacts["Joe Smith"][:email]
# contacts["Sally Johnson"][:phone]




# # Exercise 13
# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

delete_s = arr.delete_if { |word| word.start_with?('s')}

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
delte_s_w = arr.delete_if { |words| words.start_with?('s', 'w')}

# Exercise 14
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |word| word.split }
a.flatten

# Exercise 15
contact_data = ['joe@email.com', '123 Main st.', '555-123-4567']
contacts = { 'Joe Smith' => {} }
# contacts["Joe Smith"][:email] = contact_data[0][0]
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}  [:email, :address, :phone]
fields = [:email, :address, :phone]

contacts.each do |_key, value|
  fields.each do |field|
    value[field] = contact_data.shift
  end
end

p contacts

