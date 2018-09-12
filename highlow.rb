#High-low Array
# Basic Objectives:

#     Create a ruby script

#     When you run the ruby script ask the user for array input
#         eg: What numbers are in your array?
#         1,2,3,4,5,6,7,8,9,10
#         Your the developer so you decide how you want the input

#     After you get the array input ask the user if they want the highest or lowest value back from the array
#         eg: Would you like me to tell you the highest or lowest value?

#     Do the logic and output the value
#         eg: The highest value in the array is: 10

#     DO NOT USE any ruby helper methods: arr.min or arr.max, arr.sort or any other helper that would give you the direct answer

 
# Bonus Objectives:

#     Allow the script to be run  with script args
#         eg: ruby brain_teaser.rb lowest 100 49 19 38 10 2 1 8
#         output: The lowest value in the array is: 1
#         http://stackoverflow.com/questions/4244611/pass-variables-to-ruby-script-via-command-line (Links to an external site.)

 
# if user enters more than 1 number, it's read as a 
# string array... if .to_i is used on gets, it only
# returns the FIRST number entered and kicks the rest off
# so.. either find a way to convert the numbers entered from
# string to integer... or forced to ask for a single nbr
# at a time.

def brainy
puts "Please enter an array of numbers:"
input = gets
hilow_arr = []

hilow_arr << input

high = 0
low = 0

puts
puts "array"
puts hilow_arr

puts "Which do you want to see- Highest (H) or lowest (L)?"
@choice = gets.strip.upcase


case @choice
  when "H"
  hilow_arr.each do |h| 
    puts h
     if h > high
        h == high
      puts h, high
      elsif h < high
        next 
     end #end loop
     puts "The highest number is: #{high}"

     end #end if
    #  brainy figure out a way to exit gracefully
  # when "L"
  #   low = 0    
  #   highlow_arr.each do |num|
  #   if num < low
  #       num = low
  #   elsif num > low
  #       next 
  #   end #end loop
  #   end #end if  
  #   puts "The lowest number is: #{low}"
  #   brainy    
    
           
end #end case statement
end #end brainy

 brainy
