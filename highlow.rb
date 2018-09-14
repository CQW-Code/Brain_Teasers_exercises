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

 
#Originally tried to have user enter all numbers on one line
# this caused issues as it became a "string" array and 
# couldn't get it to convert to integer easily before
# comparison.  Case statement and if statement same as 
# before.

def hilow
puts
puts "Please enter 10 numbers"
puts "----------------------------------"

# changed to finite numbers allowed instead of unknown
i = 10
hilo_arr = []

#added loop to collect all 10 numbers and push to array
while i > 0
  puts "Enter a number"
  num = gets.chomp.to_i
  hilo_arr.push(num)
  i = i - 1
end
#puts hilo_arr

  puts "Which do you want to see- Highest (H) or lowest (L)?"
  @choice = gets.strip.upcase

  #here changed to starting comparison from 1st number rather than
  # 0 as the LOW nbr would always be 0. Also based loop
  # on length of array as well
  case @choice
    when "H"
      high = hilo_arr[0]
      i = 0
      while i < hilo_arr.length
        if hilo_arr[i] > high
        high = hilo_arr[i]

      end
      i = i + 1
    end
    puts "The highest number is: #{high}"

  when "L"
    low = hilo_arr[0]
    i = 0
    while i < hilo_arr.length
      if hilo_arr[i] < low
        low = hilo_arr[i]
      end
      i = i + 1
    end
          puts "The lowest number is: #{low}"

end #end case statement
end #end hilow

 hilow
