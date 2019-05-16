# At a lemonade stand, each lemonade costs $5. 

# Customers are standing in a queue to buy from you, and order one at a time (in the order specified by bills).

# Each customer will only buy one lemonade and pay with either a $5, $10, or $20 bill.  You must provide the correct change to each customer, so that the net transaction is that the customer pays $5.

# Note that you don't have any change in hand at first.

# Return true if and only if you can provide every customer with correct change.

 

# Example 1:

# Input: [5,5,5,10,20]
# Output: true
# Explanation: 
# From the first 3 customers, we collect three $5 bills in order.
# From the fourth customer, we collect a $10 bill and give back a $5.
# From the fifth customer, we give a $10 bill and a $5 bill.
# Since all customers got correct change, we output true.
# Example 2:

# Input: [5,5,10]
# Output: true
# Example 3:

# Input: [10,10]
# Output: false
# Example 4:

# Input: [5,5,10,10,20]
# Output: false
# Explanation: 
# From the first two customers in order, we collect two $5 bills.
# For the next two customers in order, we collect a $10 bill and give back a $5 bill.
# For the last customer, we can't give change of $15 back because we only have two $10 bills.
# Since not every customer received correct change, the answer is false.
 

# Note:

# 0 <= bills.length <= 10000
# bills[i] will be either 5, 10, or 20.

def lemonade_change(bills)
    hash = {
        5 => 0,
        10 => 0,
        20 => 0
        }
    
    bills.each do |bill|
        hash[bill] += 1
        if bill != 5
            change = bill - 5
            
            until change == 0
                if change >= 20
                    if hash[20] > 0
                        hash[20] -=1
                        change -= 20
                    elsif hash[10] > 0
                        hash[10] -=1
                        change -= 10
                    elsif hash[5] > 0
                        hash[5] -=1
                        change -= 5
                    else
                        return false
                    end
                elsif change >= 10
                    if hash[10] > 0
                        hash[10] -=1
                        change -=10
                    elsif hash[5] > 0
                        hash[5] -=1
                        change -= 5
                    else
                        return false
                    end
                elsif change >= 5
                    if hash[5] > 0
                        hash[5] -=1
                        change -= 5
                    else
                        return false
                    end
                end
            end
            
        end
    end
    true
end

# 5/16/19

def lemonade_change(bills)
    hash = {}
    
    bills.each do |bill|
        hash[bill] = hash[bill] ? hash[bill] + 1 : 1
        change = bill - 5
        
        if change != 0
            if change == 5
                if hash[5] && hash[5] > 0
                    hash[5] -= 1
                else
                    return false
                end
            else
                if hash[5] && hash[5] > 0 && hash[10] && hash[10] > 0
                    hash[5] -= 1
                    hash[10] -= 1
                elsif hash[5] && hash[5] >= 3
                    hash[5] -= 3
                else
                    return false
                end
            end
        end
    end
    true
end