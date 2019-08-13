# leetcode

# 8/12/19

def add_to_array_form(a, k)
    str = ""
    output = []
    
    a.each do |n|
        str << n.to_s
    end
    
    sum = (str.to_i + k).to_s.split("")
    sum.each do |char|
        output << char.to_i
    end
    output
end