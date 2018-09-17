# hackerrank

def angryProfessor(k, a)
    students_on_time = 0
    
    a.each do |time|
        students_on_time +=1 if time <= 0
    end
    
    output = students_on_time >= k ? "NO" : "YES"
    output
end