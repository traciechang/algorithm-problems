# coderbyte

# 7/23/19

def LetterCapitalize(str)
    arr = str.split(" ")
    new_arr = []
      
    arr.each do |word|
        if word.length == 1
            new_arr << word.upcase
        else
            new_arr << word[0].upcase + word[1...word.length]
        end
    end
    new_arr.join(" ")
end