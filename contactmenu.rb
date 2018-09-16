# Contact Menu exercise Week 1
# Basic Objectives:

#     Use a case statement for the menu(we haven't talked about these yet(http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/ (Links to an external site.))
#         The menu should have options to:
#         View All Contacts -- DONE
#         Add A Contact --DONE

# Bonus Objectives:

#     List a single contact and all the info - 
# (HINT: you'll probably want to look into using a Hash to 
# store contact info:  -- TODO
#  http://culttt.com/2015/04/08/working-with-hashes-in-ruby/ 
#(Links to an external site.). This would mean you would have an array of hashes and each item in the array would be a new hash with the contact info like name, email, phone, address)
#     Add a menu item to delete a single contact.  -DONE
#     Add a menu item to edit a single contact. --DONE


#next up.. create hashes to include more info like 
# email address, phone, etc
@contact_arr = ['Chris Watkin','test me']

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


while true
  case main_menu

  when 1 # Viewing all contacts
      puts @contact_arr.join("\n")

  when 2 # Adding a new contact
      contact_info

  when 3 # delete a contact
    puts
    puts 'Which contact do you wish to delete?'
    puts '--------------------------'
    puts @contact_arr.join("\n")
    puts
    delete_name = gets.strip
     @contact_arr.each_with_index do |d,i|
       if delete_name == d
          @contact_arr.delete_at (i) 
          puts 'Contact deleted'
       else
        next
       end 
      end #end loop

    when 4 #edit contact
       puts
       puts 'Which contact do you wish to edit?'
       puts '------------------------------------'
       puts @contact_arr.join("\n")
       edit_name = gets.strip
       @contact_arr.each_with_index do |e, i|
        if e == edit_name 
          puts "Please edit..."
          edited = gets.strip
          @contact_arr[i] = edited
          puts "Contact edited: #{edit_name} to #{edited}"
        else
          next
        end
      end #end loop
      
      
  when 5 # Exit the program
    exit(0)

  else
    puts "Bad input, please try again!"

end # case statement end

end # end for While

# in need of error checking
# for delete same idea- though here likely iterating through a loop
# to find the name to delete
