# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

puts "What's your name?"
name = gets.chomp
if name.empty?
  puts "You must enter your name!!!"
  exit
else
  puts "Your name is #{name}"
  name.each_char do |char|
    if char.upcase === "A" || char.upcase === "E" || char.upcase === "I" || char.upcase === "O" || char.upcase === "U"
      word = "an"
      else
        word = "a"
    end
    puts "Give me #{word}...#{char.upcase}"
  end
  puts "#{name.upcase}'s just GRAND!"
end
puts "Hey, #{name}, what's your birthday?"
date = gets.chomp
if date.empty?
  puts "You must enter your birthdate!!!"
else
  require 'Date'
  birthday = Date.parse(date)
  today = Date.today
  dif = (birthday - today).to_i
  puts "Awesome!  Your birthday is in #{dif} days! Happy Birthday in advance!"
end
