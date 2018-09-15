# Hackerrank

def catAndMouse(x, y, z)
    cat_a = x
    cat_b = y
    mouse = z
    cat_a_increment = cat_a < mouse ? 1 : -1
    cat_b_increment = cat_b < mouse ? 1 : -1
    output = ""

    until cat_a == mouse || cat_b == mouse
        cat_a += cat_a_increment
        cat_b += cat_b_increment
    end

    if cat_a == cat_b
        output = "Mouse C"
    elsif cat_a == mouse
        output = "Cat A"
    else
        output = "Cat B"
    end
    output
end

# puts catAndMouse(1,2,3)
puts catAndMouse(1,3,2)