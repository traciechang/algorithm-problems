def migratoryBirds(arr)
    hash = {}

    arr.each do |bird|
        hash[bird] = hash[bird] ? hash[bird] + 1 : 1
    end
    
    hash.map{|key, val| val == hash.values.max ? key : nil}.compact.min
end

# puts migratoryBirds([1,4,4,4,5,3])
puts migratoryBirds([1,2,3,4,5,4,3,2,1,3,4])