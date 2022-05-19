# Review 
# Datatypes 
# Integers
#   12 -12 0
# Floats 
#   3.14 -12.3 0
# Strings 
#   "bob"
#   'jones'
# Boolean 
#   true 
#   false 

# Arrays
#   [ 'adfad', 34, true ]
# Hashes
#   { first_name: 'bob', age: 22 }

# # errors
# nil 
# undefined 
# NAN

# Variables - Store Objects, for reference 
#   var_name = ''
#   - Scope - Where we have access to the variable 

#   Foo 
#   Constant, file wide 

#   foo 
#   local, code block 

#   @foo 
#   instance, class or a running instance 

#   @@foo 
#   class, class or file wide 

#   $foo 
#   Global ( Don' t use) machine wide


# object - noun, person place or thing
# * + - / % ( ) 
# < > <= >= <== >== 
# != !== 
# == ===
# && || 

# String concatenation 
# "Hello" + "world" + "!"

# String interpolation 
# @name = 'Bob Jones'
# @age = 12 

# "Welcome #{@name} you are #{@age} years old!"

# Method / function - break you code into small part, some objection 
# def print_color 
#   # some logic 
# end

# print_color

# def print_color(colors)
#   #
# end

# print_color(['red', 'green', 'purple'])

# convention - base practice 

# Conditionals - run any logic / code when a condition 
# if elsif else 
# case 
# ternary 

# if age > 21 
#   puts 'welcome to our bar'
# else 
#   puts 'you are too young'
# end

# Loops - run code, until a condition is met. 
  # base case - starting point 
  # induction step - to progress and hit the condition 
  # condition - will be eventually met
# infinite loops, to exit control + c

# inputs and outputs 
# puts 
# print  
# p 

# gets 

# Arrays - collection of data items  
# Array.new()
# Array.new(5)
# []
# ['apple', 'orange', 'pear']
# ['apple', 1, [], {}, true]

# position - index , 0 based 
          #  -3     -2     -1
          #  0     1    2
# @letters = ['a', 'b', 'c']
# p @letters[1]
# p @letters[2]
# p @letters.first 
# p @letters.last 
# p @letters[7]
# p @letters[-2]
# p @letters[-4]

# iterate - going through each element of an array

# @letters = ['a', 'b', 'c']

# @letters.each do |letter|
#   p letter
# end

# @letters.each_with_index do |letter, index|
#   puts "#{index + 1}. #{letter}"
# end

# modify
# @letters = ['a', 'b', 'c'] 
# @letters = ['d', 'a', 'g'] 
# Add 
# add to the end of the arr *
# @letters << 'd'
# p @letters
# add at the front 
# @letters.unshift('z')
# p @letters
# by index 
# @letters.insert(1, 'H')
# p @letters

# remove an item 
# remove from the end *
# p @letters.pop 
# p @letters
# remove from the front 
# @letters.shift()
# p @letters
# remove by index 
# @letters.delete_at(1) *
# p @letters

# p @letters.rotate 
# p @letters.reverse 
# p @letters.sort
# p @letters.clear

# arr methods 
# p @letters.sample - grab a random value 
# p @letters.sample

# @letters.shuffle 
# p @letters
# @letters.count

# Hashes - key value pairs, rep object, noun 
  # object - hashes 
  # { }
  # Hash.new 
  # { }
  # old 
  # { 1 => "one", 2 => "two" } 
  # { "first_name": 'bob', "age": 1 }

  #new 
  # @person = { first_name: 'bob', last_name: 'jones', age: 33 }
  # p @person

# @person = { first_name: 'bob', last_name: 'jones', age: 33 }
# @person2 = { first_name: 'jill', last_name: 'smith', age: 12 }
# p @person[:last_name]
# p @person[:age]
# p @person[:beard]

# @person[:beard] = false 

# p @person 

# @person[:age] = 34 

# p @person 

# puts "Welcome #{@person[:first_name]} #{@person[:last_name]}"

# @people = [
#   { first_name: 'bob', last_name: 'jones'},
#   { first_name: 'jill', last_name: 'smith'},
#   { first_name: 'jack', last_name: 'bobby'}
# ]

# p @people[0][:first_name]
# p @people[:first_name][0] -> error
# p @people[1][:first_name] -> jill 
# outside in, treat as an array, hash grab key

# languages = { 
#   language: {
#    ruby: { 
#      conceived: 1993,
#      awesomeness: 9000
#    },
#    java: {
#      conceived: 1991,
#      awesomeness: false
#    }
#   }
# }

# p languages[:language][:ruby][:awesomeness]
# p languages[:language][:ruby][:awesomeness] = 10000

# methods
# @person = { first_name: 'bob', last_name: 'jones', age: 33 }
# @person.keys # show all keys 
# @person.delete(:age) # delete key value pair 
# @person.clear 
# @person.has_key? :age # if it has a key or not 

# @person = { first_name: 'bob', last_name: 'jones', age: 33 }

# @person.each do |key, value|
# # @person.each do |pizza, taco|
#   puts "#{key}: #{value}"
# end

# ruby gems - package, library - tools you can use in your program  
# download ruby, gem bundler 
# Gemfile - source, where it is getting the gems from , 
# what gems you want in your project, versions

# bundle init in the terminal 
# add the gems in the gem file 
# run a bundle or bundle install
# gem.lock - info, recipet
# pry gem - debugging tool 
# irb session of our code of where we want to take 
# a look at things.

# irb - embedded ruby, built in ruby editor, testing, looking at stuff
# irb 
# exit to exit 

# any time we change the gem file, 
# run bundle 
# binding.pry, stop and let you look at variables and value
# if you see a * that mean you need to end something like a qoute or a bracket 
# to exit type exit 
# remove binding.pry after 
# require 'pry'


# @name = 'bob'

# def print_name 
#   # binding.pry
#   # puts name 
#   puts @name 
# end

# print_name