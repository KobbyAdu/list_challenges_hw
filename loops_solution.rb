# I dont need to see everything in the list
    # linst [x]

def median (list)
    list = list.sort
    if  list.size % 2 == 1         #odd
        return list[list.size / 2]
    else           #even
        return (list[list.size / 2] + list[list.size/2 - 1]) / 2.0
        

    end
    


end

            #0 1 2  
#puts median([1,2,3,7,9,4]) #2
#puts median([1,2,3,4]) #2.5


def starts_with?(list, number)
    if list[0] == number
        return true
    else
        return false

    end
end

# puts starts_with?([1,2,3], 1) #true
# puts starts_with?([1,2,3], 2) #false



#see everything on a list at a time

def average(list)
    total = 0
    list.each do |n|
        total += n   #total = total + n
    end
    total / list.size.to_f
end





#puts average([1,2,3]) #2


def count(list,number)
c = 0
    list.each do |n|
        if n == number
            c += 1
        end
    end
return c
end
#puts count([1,1,1], 1) # 3
#puts count([1,1,1], 2) # 0


def std_dev(list)
    total = 0
    list.each do |n|
        total += n   #total = total + n
    end
    avg = total / list.size.to_f   


    sum_squares = 0
    list.each do |n| 
        sum_squares += (n - avg)**2
    end
    return Math.sqrt(sum_squares/ (list.size - 1))
end
#puts std_dev([6,5,3])



## comparing one thing in a list to all other things MODE
###### nested loops -- loops inside of loops

def mode(list)
    max_count = 0
    mode = list[0]
    count = 0
    list.each do |n|  # looking for a mode number by number


        list.each do |k|  # count how many a's there are 
            if n = k
                count += 1
            end

        end
        if count > max_count
            max_count  = count
        mode = n
        end
    end
    return mode
end

#puts mode([1,2,2,2,3,4,5,6])


def is_increasing?(list)
    (list.size - 1).times do |i|
        if list[i] >= list[i + 1]
            return false
        end

    end
return true
end

# puts is_increasing?([1,2,3]) #true
# puts is_increasing?([3,2,1]) #false
# puts is_increasing?([1,1,1]) #false




def num_cats(words)
    i = 0
    count = 0
    (words.size - 2).times do |i|
        slice = words[i.. i+2]
        if slice == "cat"
            count+=1
        end
    end
    return count
end
 #puts num_cats("cats cats cats") #three
# puts num_cats("cats dog cats")


def count_code(string)
    i = 0
    count = 0
    slice = 0
    (string.size - 2).times do |i|
        slice = string[i.. i+3]
        if slice == "code" 
            count += 1
        end
        i += 1
    end
    puts "#{count}"
end


puts count_code("cope code code")


def returnthree(list)  #threed
    i = 0
    count = 0
    endcount = 0
    earliercount = 0

    if list[0] == 3 && list[1] != 0
        earliercount = 1
    end
    puts earliercount
    if list[list.size - 1] == 3 && list[list.size - 2] !=3
        endcount = 1
        puts endcount
        
    end
    (list.size - 1).times do |n|
        if list[n] == 3 && list[n + 1] != 3 && list[n-1] != 3
            count +=1
        end
    end
    puts count

        
    if count + endcount + earliercount == 3
        return true
    else 
        return false
    end

end


#puts returnthree([3,4,5,3,5,6,3,3,4,6,7,8])


def can_balance(list) 
    #first get total of list
    #divide the total by two
    #call list until adding all together gives the the total divided by two
    total = 0
    target_total = 0
    building_target_total = 0
    
    list.each do |n|
        total = total + n
    end
    puts "total is #{total}"
    target_total = total / 2
    puts "target total is #{target_total}"
    list.each do |n|
        building_target_total = n + building_target_total
        if building_target_total == target_total
            return true
        end
    end
    if building_target_total == target_total 
        puts "works at #{n}"
    else
        return "impossible"
    end



end

#puts can_balance([6,6,6,6,6,6,6,6])



def canbalanceattempt_2(list)
    # split the list at each spot of the list
    #find sum of list on one side
    # find sum of list on one
    # are they equal
    # if it happens once then it works
    x = list.size
    list.each do




    end
end


def shift_left(list)    #shift left
    list.slice(list[0])
    
    n = list[0]
    puts "#{n}"
    list.push(n)
    print list[1,(list.size - 1)]
end


#lizt = [900,2,3,4,5,4,5,6,7,8,]
#puts shift_left(lizt)





