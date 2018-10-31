# hackerrank

def substrCount(n, s)
    specialPalindromes = 0

    s.each_char.with_index do |char, idx|
        i = idx
        until i == n
            specialPalindromes += 1 if isSpecial(s[idx..i])
            i += 1
        end
    end
    specialPalindromes
end

def isSpecial(str)
    sameLetters(str) || differentMiddleLetter(str)
end

def sameLetters(str)
    letter = str[0]

    str.each_char do |char|
        return false if char != letter
    end
    true
end

def differentMiddleLetter(str)
    str_length = str.length
    return false if str_length % 2 == 0
    midpoint = str_length / 2
    letter = str[0]

    str.each_char.with_index do |char, idx|
        return false if char != letter unless idx == midpoint
    end
    true
end

# puts sameLetters("a")
# puts sameLetters("aaa")
# puts sameLetters("aba")
# puts differentMiddleLetter("aba")
# puts differentMiddleLetter("abba")
# puts differentMiddleLetter("a")
# puts differentMiddleLetter("abcba")
# puts differentMiddleLetter("ppplppp")
# puts differentMiddleLetter("pplppp")
# puts isSpecial("a")
# puts isSpecial("aba")
# puts isSpecial("ooopoo")
puts substrCount(5, "asasd")
puts substrCount(7, "abcbaba")
puts substrCount(4, "aaaa")