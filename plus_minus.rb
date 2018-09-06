# require 'pry'

def plusMinus(arr)
    positives = 0
    negatives = 0
    zeros = 0
    total = arr.length.to_f

    arr.each do |n|
        if n > 0
            positives +=1
        elsif n == 0
            zeros +=1
        else
            negatives +=1
        end
    end

    positives = (positives/total).round(6)
    positives = "%0.6f" % positives
    negatives = (negatives/total).round(6)
    negatives = "%0.6f" % negatives
    zeros = (zeros/total).round(6)
    zeros = "%0.6f" % zeros
    puts [positives, negatives, zeros]
end

# arr = [1,1,0,-1,-1]
arr = [-4,3,-9,0,4,1]
plusMinus(arr)