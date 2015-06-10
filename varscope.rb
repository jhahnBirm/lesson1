#!/usr/bin/ruby
# reassign variable

x = 4

loop do
  x = 'Hey There'
  break
end
  

puts x
puts"------------------------------------------------------"
## non-mutating

def no_mutate(arr)
  arr.uniq
end

my_arr = [1,2,2,3]
no_mutate(my_arr)
puts my_arr
puts "-------------------------------------------------------"

# call method that mutates caller

def yes_mutate(arr)
  arr.uniq!
end

my_arr = [1,2,2,3]
yes_mutate(my_arr)
puts my_arr
puts "----------------inner outer scope------------------------------"
puts "create a local variable at an inner scope and try to refrence it in the outer scope."

a = 7
3.times do |n|
    a = 5
end

puts a
puts"-----------------similar code experiments-----------------------"
puts "If you pass arguments to method, the variable must be initialized outside, if the method is being called only,
the variable must be intiailized inside"
x = "hi"

def my_method(arr)
   puts arr
end

my_method(x)

puts"------------------------pass by reference vs value-------------"

puts "Create method that takes an array as a parameter. Withing that method, call methods that do not
mutate the caller."

  zebra = [1,2,3]

def my_method(arr)
 # zebra = Array.new
  zebra = arr.uniq!
  puts zebra + 'This is zebra in the method'
end

my_arr = ['jeff', 'jeff', 'john', 'george', 'ringo', 'bob', 'killy']
my_method(my_arr)

puts zebra + 'zebra outside the method'
puts my_arr
