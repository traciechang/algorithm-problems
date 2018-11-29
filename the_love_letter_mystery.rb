# hackerrank

def theLoveLetterMystery(s)
    alphabet = ("a".."z").to_a
    total_operations = 0
    left_idx = 0
    right_idx = s.length - 1

    until left_idx > right_idx
        if s[left_idx] != s[right_idx]
            idx1 = alphabet.index(s[left_idx])
            idx2 = alphabet.index(s[right_idx])
            total_operations += (idx1 - idx2).abs
        end
        left_idx += 1
        right_idx -= 1
    end
    total_operations
end