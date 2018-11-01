# hackerrank

def maximumToys(prices, k)
    sorted_prices = prices.sort
    max_toys = 0
    
    sorted_prices.each_with_index do |price, idx|
        break if price > k
        total_price = price
        temp_toys = 1
        i = idx
        
        until total_price > k || i == prices.length - 1
            i += 1
            total_price += sorted_prices[i]
            temp_toys += 1 if total_price <= k
        end
        max_toys = temp_toys if temp_toys > max_toys
    end
    max_toys
end