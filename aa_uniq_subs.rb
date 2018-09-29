def uniq_subs(str)
    substrings = []

    str.each_char.with_index do |char, idx|
        temp_str = char
        substrings << temp_str if !substrings.include? temp_str
        str[idx+1..-1].each_char do |ch, i|
            temp_str += ch
            substrings << temp_str if !substrings.include?temp_str
        end
    end
end

# can make to O(n**2) if substrings is hash and get rid of 2 includes