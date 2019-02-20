# We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

# A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

# Return a list of all uncommon words. 

# You may return the list in any order.

 

# Example 1:

# Input: A = "this apple is sweet", B = "this apple is sour"
# Output: ["sweet","sour"]
# Example 2:

# Input: A = "apple apple", B = "banana"
# Output: ["banana"]
 

# Note:

# 0 <= A.length <= 200
# 0 <= B.length <= 200
# A and B both contain only spaces and lowercase letters.

def uncommon_from_sentences(a, b)
    hash = {}
    output = []
    
    a.split(" ").each do |word|
        hash[word] = hash[word] ? hash[word] +=1 : 1
    end
    
    b.split(" ").each do |word|
        hash[word] = hash[word] ? hash[word] +=1 : 1
    end
    
    hash.each do |key, val|
        output << key if val == 1
    end
    output
end

# 2/20/19

def uncommon_from_sentences(a, b)
    words = {}
    output = []
    
    sentence_a = a.split(" ")
    sentence_b = b.split(" ")
    
    sentence_a.each do |word|
        words[word] = words[word] ? words[word] + 1 : 1
    end
    
    sentence_b.each do |word|
        words[word] = words[word] ? words[word] + 1 : 1
    end
    
    words.each do |key, val|
        output << key if val == 1
    end
    
    output
end