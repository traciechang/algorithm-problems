# hackerrank

def utopianTree(n)
    period = 0
    height = 1
    
    until period == n
        period +=1
        if period % 2 == 0
            height +=1
        else
            height *=2
        end
    end
    height
end