#write for loop
#iterates from 0 to 15
#determine odd or even
#output if a number is odd or even

def oddeven()

arr = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
num = 0
for num in arr
    if (num % 2) == 0
        puts  "#{num} is even"
    else
        puts "#{num} is odd"
    end
end
end

oddeven