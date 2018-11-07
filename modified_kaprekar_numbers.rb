# hackerrank

def kaprekarNumbers(p, q)
    kap_nums = []
    
    (p..q).each do |num|
        sq_num = num * num
        sq_num_str = sq_num.to_s
        sq_num_length = sq_num_str.length
        middle = sq_num_length / 2
        first = sq_num_str[0...middle].to_i
        second = sq_num_str[middle..-1].to_i
        
        kap_nums << num if first + second == num
    end
    
    if kap_nums.empty?
        print "INVALID RANGE"
    else
        print kap_nums.join(" ")
    end
end