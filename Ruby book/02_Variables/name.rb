puts 'Hello, type your first name, please!'
name = gets.chomp!.capitalize!

puts 'Please, enter you last name.'
last_name = gets.chomp!.capitalize!

puts "Hi, #{name} have a great day."

10.times do
  puts name
end 

puts "Hi again, #{name} #{last_name}"