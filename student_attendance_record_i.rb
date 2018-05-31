# You are given a string representing an attendance record for a student. The record only contains the following three characters:
# 'A' : Absent.
# 'L' : Late.
# 'P' : Present.
# A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).

# You need to return whether the student could be rewarded according to his attendance record.

# Example 1:
# Input: "PPALLP"
# Output: True
# Example 2:
# Input: "PPALLL"
# Output: False

def check_record(s)
    absent = 0
    late = 0
    
    s.each_char.with_index do |letter, idx|
        if (letter != "L") && (s[idx-1] == "L" unless idx == 0)
            late = 0
        end
        
        if letter == "A"
            absent += 1
        end
        
        if (letter == "L") && (s[idx+1] == "L" || (s[idx-1] == "L" unless idx == 0))
            late += 1
        end
        
        return false if absent > 1 || late > 2
    end
    true
end