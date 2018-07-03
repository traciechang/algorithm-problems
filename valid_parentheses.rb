# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Note that an empty string is also considered valid.

# Example 1:

# Input: "()"
# Output: true
# Example 2:

# Input: "()[]{}"
# Output: true
# Example 3:

# Input: "(]"
# Output: false
# Example 4:

# Input: "([)]"
# Output: false
# Example 5:

# Input: "{[]}"
# Output: true

def is_valid(s)
    arr = []
    
    s.each_char do |char|
        if char == "(" || char == "[" || char == "{"
            arr << char
        elsif char == ")" && arr.last == "("
            arr.pop
        elsif char == "]" && arr.last == "["
            arr.pop
        elsif char == "}" && arr.last == "{"
            arr.pop
        else
            return false
        end
    end
    arr == []
end