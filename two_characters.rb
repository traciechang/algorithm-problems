# hackerrank

def alternate(s)
    longest_alternating_str = 0
    unique_letters = []

    s.each_char do |char|
        unique_letters << char if !unique_letters.include?(char)
    end

    unique_letters.each_with_index do |letter, idx|
        unique_letters[idx+1..-1].each do |letter2|
            temp_str = ""
            s.each_char do |char|
                temp_str << char if char == letter || char == letter2
            end
            alternating = true
            temp_str.each_char.with_index do |c, i|
                unless i == temp_str.length - 1
                    if c == temp_str[i+1]
                        alternating = false
                    end
                end
            end
            if alternating
                longest_alternating_str = temp_str.length if temp_str.length > longest_alternating_str
            end
        end
    end
    longest_alternating_str
end
