# require 'colorize'
require 'pry'

# puts "Welcome!".colorize(:light_blue)
# puts "To my contact list!".colorize(:green)
# Basic Objectives

# Build a contact list
# store all the contacts 
  # variable
  # array to hold all the contacts 
  # hash to hold a single contact 
  # first name, last name , phone, email, favorite
  #   string     string     string string boolean 
# Create a menu that allows a user to select 
# menu method to print menu 
  # puts 
  # to grab user input gets/
  # if else
# 1) Create a contact
  # method to create a contact 
  # inputs and outputs 
  # need grab their input and put it in to a hash 
  # to add into an array
# 2) View All Contacts 
  # iterate through the array of contacts and print out in 
  # string interpolation of their infor
# 3) Exit
  # puts good message 
  # exit 
# The menu should loop until the user exits
  # loop 
  # recursion you are calling methods within its self 

# Array of hashes of contacts
@contacts = [
  # info for each contact
  { first_name: 'bob', last_name: 'smith', email: 'bob@bob.com', phone: '123-123-1233', favorite: true },
  { first_name: 'jane', last_name: 'doe', email: 'jane@jane.com', phone: '321-245-2222', favorite: true },
  { first_name: 'mike', last_name: 'jones', email: 'mike@mike.com', phone: '123-444-4455', favorite: false },
]

# welcome method
def welcome 
  puts "Welcome to my contact list!"
  puts "---------------------------"
  main_menu
end

# main menu method
def main_menu 
  puts "1) Create a contact"
  puts "2) View All Contacts"
  puts "3) Exit"
  puts "What is it you want to do?"
  user_choice = gets.strip.to_i

  # condition of what the user chooses for the menu
  if user_choice == 1  
    create_contact
    main_menu # go back to main menu
  elsif user_choice == 2
    view_contacts
    main_menu # go back to main menu
  elsif  user_choice == 3
    puts "Good Bye"
    exit # exit the program
  else
    # error handling for what they have not choose 1, 2 or 3
    puts "Error have to choose 1, 2, or 3"
    main_menu
  end
end

# method to create contact
def create_contact
  # outputs of grabbing the users info
  puts "Creating a Contact"
  puts "What is the contact first name?"
  first_name = gets.strip 
  puts "What is the contact last name?"
  last_name = gets.strip 
  puts "What is the contact email?"
  email = gets.strip 
  puts "What is the contact phone number?"
  phone = gets.strip 
  
  puts "Are they Your favorite contact? (y/n)"
  fav = gets.strip

  # ask in a loop y or n until they do
  while true 
    break if fav == 'y' || fav == 'n'
    puts "Are they Your favorite contact? (y/n)"
    fav = gets.strip
  end

  # change string to a boolean
  fav_bool = false
  if fav == 'y'
    fav_bool = true
  end

  # create new contact hash
  new_contact = { 
    first_name: first_name, 
    last_name: last_name, 
    email: email, 
    phone: phone, 
    favorite: fav_bool 
  }

  # add contact to the array
  @contacts << new_contact
end

# method to view contacts
def view_contacts
  puts 'View All Contacts'
  # iterate through the array and display in a readable format
  @contacts.each do |contact_info|
    puts "Name: #{contact_info[:first_name]} #{contact_info[:last_name]}"
    puts "Email: #{contact_info[:email]}"
    puts "Phone: #{contact_info[:phone]}"
    puts "Favorite: #{is_fav(contact_info[:favorite])}"
    puts 
    puts "---------"
  end
end

# method to convert a boolean to a string
def is_fav(favorite)
  if favorite == true 
    return 'Yes'
  else 
    return 'No'
  end
end

welcome

