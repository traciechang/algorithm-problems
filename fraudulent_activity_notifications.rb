# hackerrank

def activityNotifications(expenditure, d)
    total_notifications = 0
    
    (d..expenditure.length-1).each do |idx|
        idx_start = idx - d
        idx_end = idx - 1
        sub_expenditure = expenditure[idx_start..idx_end].sort
        midpoint = sub_expenditure.length / 2
        if sub_expenditure.length % 2 == 0
            median = (sub_expenditure[midpoint] + sub_expenditure[midpoint - 1]) / 2.0
        else
            median = sub_expenditure[midpoint]
        end
        total_notifications += 1 if expenditure[idx] >= median * 2
    end

    total_notifications
end

puts activityNotifications([1, 2, 3, 4, 4,], 4)