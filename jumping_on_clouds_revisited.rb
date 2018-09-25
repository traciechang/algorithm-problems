# hackerrank

def jumpingOnClouds(c, k)
    current_idx = 0
    energy_left = 100
    total_clouds = c.length
    
    current_idx = (current_idx + k) % total_clouds
    energy_left -=1
    energy_left -= 2 if c[current_idx] == 1
    
    until current_idx == 0
        jump = current_idx + k
        if jump > total_clouds
            current_idx = 0
        else
            current_idx = jump % total_clouds
        end
        energy_left -=1
        energy_left -= 2 if c[current_idx] == 1 
    end
    energy_left
end