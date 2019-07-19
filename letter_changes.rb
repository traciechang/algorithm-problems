# coderbyte

# 7/19/19

def LetterChanges(str)
    output = ""
    alpha = ("a".."z").to_a
    vowels = ["a", "e", "i", "o", "u"]
    
    str.each_char do |char|
        if alpha.include?(char)
            idx = alpha.find_index(char) + 1
            if idx > 25
                output << alpha[0].upcase
            else
                if vowels.include?(alpha[idx])
                    output << alpha[idx].upcase
                else
                    output << alpha[idx]
                end
            end
        else
            output << char
        end
    end
    
    output
end