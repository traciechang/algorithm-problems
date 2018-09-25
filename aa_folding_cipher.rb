def folding_cipher(str)
    alphabet = ("a".."z").to_a
    new_str = ""

    str.each_char do |char|
        idx = alphabet.index(char)
        new_str << alphabet[(idx + 1) * -1]
    end
    new_str
end

puts folding_cipher("abc")
puts folding_cipher("man")