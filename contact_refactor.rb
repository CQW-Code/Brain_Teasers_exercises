# Contact Menu exercise Week 1 Refactor
# Basic Objectives:

# Create hashes to expand contact info
# Refactor your Contact List  to use methods, variables, loops
# Refactor your Contact List  to use conditionals for error checking
# Refactor your Contact List to have correct and consistent code indentation

# create hashes to include more info like
# email address, phone, etc

@contacts = [{ firstname: 'Chris', lastname: 'Watkin',
               email: 'chriswatkin@gmail.com', city: 'Huntersville',
               state: 'NC' },
             { firstname: 'AJ', lastname: 'La Valley', email: 'lavalleyaj@gmail.com',
               city: 'Seattle', state: 'WA' }]

def main_menu
  puts
  puts '**** Contacts Menu ****'
  puts '1) View all contacts'
  puts '2) Create Contact'
  puts '3) Delete a Contact'
  puts '4) Edit a Contact'
  puts '5) Exit'
  puts '***********************'
  puts '                       '
  puts 'Please make a selection >'
  choice = gets.to_i
end # end for method main_menu

def contact_info
  puts 'Enter first name: '
  fname = gets.strip.capitalize
  puts 'Enter last name: '
  lname = gets.strip.capitalize
  puts 'Enter email: '
  email = gets.strip
  puts 'Enter city: '
  city = gets.strip.capitalize
  puts 'Enter state: '
  state = gets.strip.upcase

  h = Hash.new { |h, k| h[k] = '' }
  #figure out how to catch blank entry?
  h[:firstname] << fname

  h[:lastname] << lname

  h[:email] << email

  h[:city] << city

  h[:state] << state

  @contacts << h
end #  method contact_info

def view_list
    @contacts.each do |contact|
    puts "First Name:  #{contact[:firstname]}"
    puts "Last Name: #{contact[:lastname]}"
    puts "Email: #{contact[:email]}"
    puts "Location: #{contact[:city]}, #{contact[:state]}"
    puts
  end # loop
end # view list module

def delete_contact
  puts
  puts 'Which contact do you wish to delete?'
  puts '--------------------------'
  view_list
  puts
  delete_name = gets.strip.capitalize
  @contacts.each_with_index do |d, i|
    if delete_name == d
      @contacts.delete_at i
      puts 'Contact deleted'
      puts
      view_list
    else
      next
    end # if statement
  end # end loop
end

def edit_contact
  view_list
  puts
  puts 'Which contact do you wish to edit?'
  puts '[enter first name only]'
  puts '------------------------------------'
  edit_name = gets.strip.capitalize
  puts edit_name #ok
   @contacts.each do |x| 
    if x[:firstname] == edit_name
      puts "Which field do you want to edit?"
      puts "(please type the exact field name)"
      puts "-" * 40
      puts
      puts @contacts.map {|k| k.keys}.uniq
      puts
      field = gets.strip.downcase
      puts
      @contacts.each do |f| #not executing here
            if f.keys[0] == field
              puts "please edit..."
              edited = gets.strip
              @contacts[:firstname] = edited
          @contacts[i] = edited
          puts "Contact edited!"
          view_list
    end #if for key
  end 
end
end # loop get name
end # def module

loop do
  case main_menu
    when 1 # Viewing all contacts
      view_list
    when 2 # Adding a new contact
      contact_info
    when 3 # delete a contact
      delete_contact
    when 4 # edit contact
      edit_contact
    when 5 # Exit the program
      exit(0)
    else
      puts 'Bad input, please try again!'

  end # case statement end
end #  loop

# in need of error checking
