def is_possible(a, b, c, d)
    return 'yes' if a == c && b == d
    return 'no' if a > c || b > d
  
    possible_moves = calculate_moves(a, b)
    possible_moves.each do |possible_move|
      possible_a, possible_b = possible_move
      return 'yes' if is_possible(possible_a, possible_b, c, d) == 'yes'
    end
  
    'no'
  end
  
  def calculate_moves(a, b)
    new_value = a + b
    [[new_value, b], [a, new_value]]
    # 2 possible_moves
  end
  
  puts is_possible(1, 4, 5, 9) == 'yes'
  puts is_possible(1, 2, 3, 6) == 'no'
  puts is_possible(1, 2, 8, 5) == 'yes'