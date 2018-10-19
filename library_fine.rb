# hackerrank

def libraryFine(d1, m1, y1, d2, m2, y2)
    amount_due = 0
    if y1 > y2
        amount_due += 10000
    elsif m1 > m2 && y1 == y2
        amount_due += 500 * (m1 - m2)
    elsif d1 > d2 && m1 == m2 && y1 == y2
        amount_due += 15 * (d1 - d2)
    end
    amount_due
end