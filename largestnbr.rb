#Write a function with a conditional statement to find the largest 
#of five numbers. 
#Display an alert box to show the result.

#input 5 numbers
#put in array
#iterate using do loop to find biggest number (account for - nbrs)
#output number to alert box---> Ruby doesn't have this

#in the case of negative (or all negatives) it defaults
# to 0 from the original initialization.
    
def largest()
puts "enter 1st number: "
nbr1 = gets.strip.to_i
puts 'enter 2nd number: '
nbr2 = gets.strip.to_i
puts 'enter 3rd number: '
nbr3 = gets.strip.to_i
puts 'enter 4th number: '
nbr4 = gets.strip.to_i
puts 'enter 5th number: '
nbr5 = gets.strip.to_i

numbers = []
biggest = 0

numbers << nbr1
numbers << nbr2
numbers << nbr3
numbers << nbr4
numbers << nbr5

numbers.each do |n|
	if n > biggest
		biggest = n 
	end
end

puts "The biggest number is #{biggest}"
#no method to create an alert box- unless there's a 
#Ruby gem for it.
end

largest




