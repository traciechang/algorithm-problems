# hackerrank

def flatlandSpaceStations(n, c)
    cities = (0...n).to_a
    max_distance = nil
    
    cities.each do |city|
        min_distance = nil
       c.each do |space_station|
            curr_distance = (city - space_station).abs
            min_distance = curr_distance if min_distance.nil? || curr_distance < min_distance
       end
        max_distance = min_distance if max_distance.nil? || min_distance > max_distance
    end
    max_distance
end
