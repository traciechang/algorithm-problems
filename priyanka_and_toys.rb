# hackerrank

def toys(w)
    total_containers = 0
    sorted_weights = w.sort
    curr_min_weight = nil

    sorted_weights.each do |weight|
        if curr_min_weight.nil? || weight > curr_min_weight + 4
            curr_min_weight = weight
            total_containers += 1
        end
    end
    total_containers
end