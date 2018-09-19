# hackerrank

def breakingRecords(scores)
    best_record = scores[0]
    worst_record = scores[0]
    best_record_total = 0
    worst_record_total = 0

    scores.each do |score|
        if score > best_record
            best_record = score
            best_record_total +=1
        end

        if score < worst_record
            worst_record = score
            worst_record_total +=1
        end
    end
    [best_record_total, worst_record_total]
end

puts breakingRecords([10,5,20,20,4,5,2,25,1])