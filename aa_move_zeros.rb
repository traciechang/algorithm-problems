def move_zeros(arr)
    i = 0
    j = arr.length - 1

    until i > j
        if arr[i] == 0 && arr[j] != 0
            temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            i += 1
            j -=1
        elsif arr[i] != 0
            i +=1 
        elsif arr[j] == 0
            j -=1
        end
    end
    arr
end

# print move_zeros([1,2,0,3,4,0,5,6,0])
print move_zeros([1,2,0,3,4,0,5,6,9])