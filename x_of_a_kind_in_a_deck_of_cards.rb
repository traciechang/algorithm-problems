# # leetcode

# In a deck of cards, each card has an integer written on it.

# Return true if and only if you can choose X >= 2 such that it is possible to split the entire deck into 1 or more groups of cards, where:

# Each group has exactly X cards.
# All the cards in each group have the same integer.

def has_groups_size_x(deck)
    return false if deck.length < 2
    deck_hash = {}
    
    deck.each do |n|
        deck_hash[n] = deck_hash[n] ? deck_hash[n] + 1 : 1
    end
    
    least_val = nil
    
    deck_hash.each do |key, val|
        return false if val == 1
        least_val = val if least_val.nil? || val < least_val
    end
    
    lcd = 2
    
    until lcd > least_val
        all_pass = true
        deck_hash.each do |key, val|
            if val % lcd != 0
                lcd += 1
                all_pass = false
                break
            end
        end
        return true if all_pass
    end
    false
end