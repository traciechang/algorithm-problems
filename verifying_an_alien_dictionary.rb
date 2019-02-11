# leet

# In an alien language, surprisingly they also use english lowercase letters, but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.

# Given a sequence of words written in the alien language, and the order of the alphabet, return true if and only if the given words are sorted lexicographicaly in this alien language.

require 'pry'

def is_alien_sorted(words, order)
    # output = true
    words.each_with_index do |word, idx|
        current_idx = 0
        # current_word_pos = order[word[current_idx]]
        # next_word_pos = order[words[idx+1][current_idx]]
        # return false if current_word_pos > next_word_pos
        # if current_word_pos == next_word_pos
        #     current_idx += 1
        # end

        unless idx == words.length - 1
            # binding.pry

            temp = compare_letters(words, order, word, idx, current_idx)
            binding.pry
                # return false
            
        end
    end
    true
end

def compare_letters(words, order, word, idx, current_idx)
    # break if words[idx+1].nil?
    # binding.pry
    current_word_pos = order.index(word[current_idx])
    next_word_pos = order.index(words[idx+1][current_idx])
    # binding.pry
    if next_word_pos.nil? || current_word_pos > next_word_pos
        return false
    end
    if current_word_pos == next_word_pos
        current_idx += 1
        compare_letters(words, order, word, idx, current_idx) unless idx == word.length - 1
    end
    true
end

puts is_alien_sorted(["hello","leetcode"], "hlabcdefgijkmnopqrstuvwxyz")
# puts is_alien_sorted(["word","world","row"], "worldabcefghijkmnpqstuvxyz")
# puts is_alien_sorted(["apple","app"], "abcdefghijklmnopqrstuvwxyz")