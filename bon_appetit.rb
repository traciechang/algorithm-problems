# hackerrank

def bonAppetit(bill, k, b)
    annas_bill = 0

    bill.each_with_index do |bil, idx|
        annas_bill += bil if idx != k
    end

    annas_bill = annas_bill / 2
    if annas_bill == b
        print 'Bon Appetit'
    else
        print b - annas_bill
    end
end

puts bonAppetit([3,10,2,9], 1, 12)
# puts bonAppetit([3,10,2,9], 1, 7)