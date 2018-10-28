# hackerrank

require 'pry'

def superReducedString(s)
    return "Empty String" if s.empty?
    reduced_str = ""
    prev = nil
    s_length = s.length
    
    s.each_char.with_index do |char, idx|
        if prev.nil?
            prev = char
        elsif char == prev
            return superReducedString(reduced_str + s[idx + 1..s_length])
        else
            reduced_str << prev
            prev = char
            if idx == s_length - 1
                reduced_str << prev
                return reduced_str
            end
        end
    end

end

puts superReducedString("aaabccddd")