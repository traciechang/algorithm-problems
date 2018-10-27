# hackerrank

def minimumNumber(n, password)
    # Return the minimum number of characters to make the password strong
    numbers = "0123456789"
    lower_case = "abcdefghijklmnopqrstuvwxyz"
    upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    special_characters = "!@#$%^&*()-+"
    has_num = false
    has_lower = false
    has_upper = false
    has_special = false
    min_characters_needed = 0
    
    
   numbers.each_char do |char|
    if password.include? char
        has_num = true
        break
    end
   end
    
    lower_case.each_char do |char|
        if password.include? char
            has_lower = true
            break
        end
    end
    
    upper_case.each_char do |char|
        if password.include? char
            has_upper = true
            break
        end
    end
    
    special_characters.each_char do |char|
        if password.include? char
            has_special = true
            break
        end
    end
    
    pass_length = password.length
    min_characters_needed = 6 - pass_length if pass_length < 6
    
    chars_to_add = 0
    chars_to_add +=1 if !has_num
    chars_to_add +=1 if !has_lower
    chars_to_add +=1 if !has_upper
    chars_to_add +=1 if !has_special
    
    if min_characters_needed == chars_to_add
        return min_characters_needed
    elsif min_characters_needed > chars_to_add
        return min_characters_needed
    else
        chars_to_add
    end
end
