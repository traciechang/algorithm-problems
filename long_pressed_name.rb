# leetcode

# Your friend is typing his name into a keyboard.  Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.

# You examine the typed characters of the keyboard.  Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.

 

# Example 1:

# Input: name = "alex", typed = "aaleex"
# Output: true
# Explanation: 'a' and 'e' in 'alex' were long pressed.
# Example 2:

# Input: name = "saeed", typed = "ssaaedd"
# Output: false
# Explanation: 'e' must have been pressed twice, but it wasn't in the typed output.
# Example 3:

# Input: name = "leelee", typed = "lleeelee"
# Output: true
# Example 4:

# Input: name = "laiden", typed = "laiden"
# Output: true
# Explanation: It's not necessary to long press any character.
 

# Note:

# name.length <= 1000
# typed.length <= 1000
# The characters of name and typed are lowercase letters.

# 5/14/19

def is_long_pressed_name(name, typed)
    typed_idx = 0
    name_idx = 0
    
    while name_idx <= name.length - 1
        if name[name_idx] == typed[typed_idx]
            typed_idx += 1
            name_idx += 1
        elsif name[name_idx] != typed[typed_idx] && typed[typed_idx] == typed[typed_idx - 1]
            typed_idx += 1
        else
            return false
        end
    end
    
    while typed_idx != typed.length
        return false if typed[typed_idx] != typed[typed_idx - 1]
        typed_idx += 1
    end
    true
end