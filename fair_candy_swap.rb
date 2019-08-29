# leetcode

# 8/29/19

require 'pry'

def fair_candy_swap(a, b)
    a.each_with_index do |n, idx|
        b.each_with_index do |n2, idx2|
            initial_sum = (a[0...idx] + a[idx+1...a.length]).inject(:+)

            if initial_sum
                a_sum = initial_sum + n2
            else
                a_sum = n2
            end
            
            initial_sum2 = (b[0...idx2] + b[idx2+1...b.length]).inject(:+)

            if initial_sum2
                b_sum = initial_sum2 + n
            else
                b_sum = n
            end
            return [n, n2] if a_sum == b_sum
        end
    end
end

# puts fair_candy_swap([2], [1,3])
puts fair_candy_swap([1,2,5], [2,4])

