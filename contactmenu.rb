# Contact Menu exercise Week 1

@contact_arr = ['Chris Watkin','test me']

def main_menu
  puts
  puts '**** Contacts Menu ****'
  puts '1) View all contacts'
  puts '2) Create Contact'
  puts '3) Delete a Contact'
  puts '4) Edit a Contact' #TODO
  puts '5) Exit'
  puts '***********************'
  puts '                       '
  puts 'Please make a selection >'
  choice = gets.strip.downcase
  choice.to_i

end # end for method main_menu

def contact_info  #done
  puts 'Enter full name: '
  name = gets.strip
  if name.length > 0
    @contact_arr << name
    puts "Added #{name}"
    puts
  else
    puts 'Please enter a new Contact'
    contact_info
  end # end if
end # end for method contact_info

# def view_contacts
#   @contact_arr.each do |name|
#     puts name
#   end # loop end
#     end # end for method view_contacts

while true
  case main_menu

  when 1 # Viewing all contacts
      puts @contact_arr.join("\n")

  when 2 # Adding a new contact
    contact_info

  when 3 # delete a contact
    puts
    puts 'Who do you wish to delete?'
    puts '--------------------------'
    puts @contact_arr.join("\n")
    delete_name = gets.strip.downcase
     @contact_arr.each_with_index do |d,i|
      puts i
       if d == delete_name
          @contact_arr.delete_at (i) 
       else
        next
       end 
      end
         


  when 4 # edit contact
    puts 'Which contact do you want to edit?'
    puts '----------------------------------'
    view_contacts
    edit_contact = gets.strip

  when 5 # Exit the program
    exit(0)
  else
    puts "Bad input, please try again!"
end # case statement end
end # end for While

# in need of error checking
# for delete same idea- though here likely iterating through a loop
# to find the name to delete
