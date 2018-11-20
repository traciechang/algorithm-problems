# hackerrank

def jimOrders(orders)
    delivery_times = []
    output = []

    orders.each_with_index do |order, idx|
        delivery_times << [order[0] + order[1], idx + 1]
    end

    sorted_delivery_times = delivery_times.sort
    sorted_delivery_times.each do |time|
        output << time[1]
    end
    output
end
