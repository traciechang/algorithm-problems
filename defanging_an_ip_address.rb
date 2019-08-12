# leetcode

# 8/12/19

def defang_i_paddr(address)
    output = ""
    
    address.each_char do |char|
        if char == "."
            output << "[.]"
        else
            output << char
        end
    end
    output

end