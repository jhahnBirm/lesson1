#!/usr/bin/ruby
#
#Calculator App from Lesson 1
#
def say(msg)
  puts "=> #{msg}"
end

puts "What is the first number?"
num1 = gets.chomp

puts "What is the second number?"
num2 = gets.chomp

say "what do you want to do with #{num1} and #{num2}?  1)add 2)subtract 3)multiply 4)divide"

operator = gets.chomp

#if operator == '1'
#  result = num1.to_i + num2.to_i
#elsif operator == '2'
#  result = num1.to_i - num2.to_i
#elsif operator == '3'
#  result = num1.to_i * num2.to_i
#elsif operator == '4'
#  result = num1.to_f / num2.to_f
#end

case operator
when '1'
  result = num1.to_i + num2.to_i
when '2'
  result = num1.to_i - num2.to_i
when '3'
  result = num1.to_i * num2.to_i
when '4'
  result = num1.to_f / num2.to_f
else
  puts "Please choose a number between 1 and 4"

end

puts "Result is #{result}"
