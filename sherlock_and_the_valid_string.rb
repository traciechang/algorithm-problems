# hackerrank

require 'pry'

def isValid(s)
    letters = {}
    occurences = {}
    
    s.each_char do |char|
        letters[char] = letters[char] ? letters[char] + 1 : 1
    end

    letters.each do |key, val|
        occurences[val] = occurences[val] ? occurences[val] + 1 : 1
    end

    if occurences.length > 2
        return "NO"
    elsif occurences.length <= 1
        return "YES"
    else
        first_key = nil
        first_val = nil
        occurences.each do |key, val|
            first_key = key if first_key.nil?
            first_val = val if first_val.nil?
            
            if (((first_key - key).abs == 1) || (first_key == 1 || key == 1)) && (first_val == 1 || val == 1)
                return "YES"
            end
        end
    end
    "NO"
end

# puts isValid("aabbccddeefghi")
puts isValid("ibfdgaeadiaefgbhbdghhhbgdfgeiccbiehhfcggchgghadhdhagfbahhddgghbdehidbibaeaagaeeigffcebfbaieggabcfbiiedcabfihchdfabifahcbhagccbdfifhghcadfiadeeaheeddddiecaicbgigccageicehfdhdgafaddhffadigfhhcaedcedecafeacbdacgfgfeeibgaiffdehigebhhehiaahfidibccdcdagifgaihacihadecgifihbebffebdfbchbgigeccahgihbcbcaggebaaafgfedbfgagfediddghdgbgehhhifhgcedechahidcbchebheihaadbbbiaiccededchdagfhccfdefigfibifabeiaccghcegfbcghaefifbachebaacbhbfgfddeceababbacgffbagidebeadfihaefefegbghgddbbgddeehgfbhafbccidebgehifafgbghafacgfdccgifdcbbbidfifhdaibgigebigaedeaaiadegfefbhacgddhchgcbgcaeaieiegiffchbgbebgbehbbfcebciiagacaiechdigbgbghefcahgbhfibhedaeeiffebdiabcifgccdefabccdghehfibfiifdaicfedagahhdcbhbicdgibgcedieihcichadgchgbdcdagaihebbabhibcihicadgadfcihdheefbhffiageddhgahaidfdhhdbgciiaciegchiiebfbcbhaeagccfhbfhaddagnfieihghfbaggiffbbfbecgaiiidccdceadbbdfgigibgcgchafccdchgifdeieicbaididhfcfdedbhaadedfageigfdehgcdaecaebebebfcieaecfagfdieaefdiedbcadchabhebgehiidfcgahcdhcdhgchhiiheffiifeegcfdgbdeffhgeghdfhbfbifgidcafbfcd")