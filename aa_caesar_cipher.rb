# Write a function that takes a message and an increment amount and
# outputs the same letters shifted by that amount in the
# alphabet. Assume lowercase and no punctuation. Preserve spaces.

def caesar_cipher(str, shift)
    alphabet = ("a".."z").to_a
    alphabet_length = alphabet.length
    shifted_str = ""

    str.each_char do |letter|
        if letter == " "
            shifted_str << " "
        else
            letter_idx = alphabet.find_index(letter)
            shifted_str << alphabet[(letter_idx + shift) % alphabet_length]
        end
    end
    shifted_str
end

puts caesar_cipher("xyz", 2)