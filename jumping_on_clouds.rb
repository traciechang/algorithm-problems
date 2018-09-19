def jumpingOnClouds(c)
    position = 0
    total_jumps = 0
    
    until position == c.length - 1
        if c[position + 2] == 1 || c[position + 2].nil? 
            position +=1
        else
            position +=2
        end
        total_jumps +=1
    end
    total_jumps
end

# puts jumpingOnClouds([0,0,1,0,0,1,0])
# puts jumpingOnClouds([0,0,0,0,1,0])
puts jumpingOnClouds([0,0,0,1,0,0])