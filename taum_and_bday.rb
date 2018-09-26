# hackerrank

def taumBday(b, w, bc, wc, z)
    total_cost = 0
    
    if bc == wc
        return (b + w) * bc
    else
        if bc > wc
            b_cost = (wc + z) < bc ? wc + z : bc
            total_cost += (w * wc) + b_cost * b
        else
            w_cost = (bc + z) < wc ? bc + z : wc
            total_cost += (b * bc) + w_cost * w
        end
    end
    total_cost
end