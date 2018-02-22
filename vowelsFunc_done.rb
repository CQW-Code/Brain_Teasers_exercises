#count the vowels in a string and output


def vowels()
  puts 'Count all vowels in string'
  puts 'and output the total number'
puts 'Enter 1 or more words:'
string = gets.strip.downcase

vowel = 0
  i = 0

  while i < string.length
    if (string[i]=="a" || string[i]=="e" || string[i]=="i" || string[i]=="o"|| string[i]=="u")
      vowel +=1
    end
  i +=1
  end
  puts "the number of vowels:" 
  puts vowel
end

vowels