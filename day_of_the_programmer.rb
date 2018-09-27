# hackerrank

def dayOfProgrammer(year)
    output = ""
    if year == 1918
        output = "26.09.1918"
    elsif year > 1917
        output = ( (year % 4 == 0 && year%100!=0) || (year%400==0) ) ? "12.09.#{year}" : "13.09.#{year}"
    else
        output = year % 4 == 0 ? "12.09.#{year}" : "13.09.#{year}"
    end
    output
end