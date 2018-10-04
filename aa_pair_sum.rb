def pair_sum(arr, k)
    poss_pairs = {}
    seen = {}
    pairs_arr = []

    arr.each do |n|
        poss_pairs[n] = k-n
    end

    poss_pairs.each do |k, v|
        if poss_pairs[v] && seen[k].nil?
            if k > v
                pairs_arr << [v,k]
            else
                pairs_arr << [k, v]
            end
        end
        seen[v] = k
    end
    pairs_arr
end