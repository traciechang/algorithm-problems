# Given a time in -hour AM/PM format, convert it to military (24-hour) time.

# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.

# Function Description

# Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

# timeConversion has the following parameter(s):

# s: a string representing time in  hour format
# Input Format

# A single string  containing a time in -hour clock format (i.e.:  or ), where  and .

# Constraints

# All input times are valid
# Output Format

# Convert and print the given time in -hour format, where .

# Sample Input 0

# 07:05:45PM
# Sample Output 0

# 19:05:45

def timeConversion(s)
    if s[-2..-1] == "PM"
        return s[0..-3] if s[0..1] == "12"
        converted_time = (s[0..1].to_i + 12).to_s
        converted_time + s[2..-3]
    else
        return "00" + s[2..-3] if s[0..1] == "12"
        s[0..-3]
    end
end

# s = "07:05:45PM"
# s = "12:00:00AM"
s = "12:00:00PM"
puts timeConversion(s)