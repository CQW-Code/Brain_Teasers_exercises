#join all elements of an array into one string

@arr = %w[Gallaudet Clerc Jordan Keller Cogswell]

def joinup()
    puts "join elements of an array"
    puts @arr.join
end


#sort an array
def sortit()
    puts 'sort all elements of the array'
    puts @arr.sort.join(',')
end

joinup
sortit