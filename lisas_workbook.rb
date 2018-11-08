# hackerrank

def workbook(n, k, arr)
    special_problems = 0
    pages = {}
    curr_page_num = 1
    
    arr.each do |problems|
        curr_problem = 1
        problems_left = problems
        until curr_problem > problems
            end_problem = problems_left >= k ? curr_problem + (k - 1) : curr_problem + (problems_left - 1)
            pages[curr_page_num] = (curr_problem..end_problem).to_a
            curr_problem += k
            curr_page_num += 1
            problems_left -= k
        end
    end
    
    pages.each do |key, val|
        special_problems += 1 if val.include?(key)
    end
    special_problems
end