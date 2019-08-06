# leetcode

# 8/6/19

def eval_rpn(tokens)
    return tokens[0] if tokens.length == 1
    new_tokens = []
    operators = ["+", "-", "*", "/"]
    
    tokens.each_with_index do |token, idx|
        if operators.include?(token)
            sym = token.to_sym
            new_token = [tokens[idx-2].to_i, tokens[idx-1].to_i].inject(sym)
            new_tokens = [0...idx-2] + [new_token] + [idx+1...tokens.length]
            break
        end
    end
    eval_rpn(new_tokens)
end