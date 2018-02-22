#join all elements of an array into one string

@arr = %w[Gallaudet Clerc Jordan Keller Cogswell]

def joinup()
    puts @arr.join
end


#sort an array
def sortit()
    puts @arr.sort.join(',')
end

joinup
sortit