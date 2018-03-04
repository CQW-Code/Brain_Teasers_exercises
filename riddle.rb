#create interactive way to do the following:
# 3 is 5
#10 is 3
#and 4 is the magic number
# the second number is how many letters are in the first nbr
#so when a user enters a number--> count how many letters and
#output

require 'to_words'

puts 'please enter a number or type quit'

  def riddle
    
    @num = gets.strip
    if @num == 'quit'
      exit
    end
    @word = @num.to_words
    @magicnum = @word.length

    
    if (@magicnum == 4)
      puts '4 is the magic number'
    elsif (@magicnum != @num)
      puts @word 
      puts "#{@num}  is  #{@magicnum}"
      
    end
    puts
    puts 'please enter another number'
    riddle
    end

    riddle
   
    
      

     
      
  

  




