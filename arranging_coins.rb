# leetcode

# 8/12/19

def arrange_coins(n)
    num = n
    i = 1
    
    while num > i
        num -= i
        i += 1
    end
    
    num == i ? i : i - 1
end