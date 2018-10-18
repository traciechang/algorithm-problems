# hackerrank

def getMoneySpent(keyboards, drives, b) 
    curr_total = -1
    
    keyboards.each do |keyboard|
        drives.each do |drive|
            temp_total = keyboard + drive
            if temp_total > curr_total && temp_total <= b
                curr_total = temp_total
            end
        end
    end
    curr_total
end