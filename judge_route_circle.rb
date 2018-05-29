# Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.

# The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.

# Example 1:
# Input: "UD"
# Output: true
# Example 2:
# Input: "LL"
# Output: false

def judge_circle(moves)
    moves_hash = {
        "R" => [1, 0],
        "L" => [-1,0],
        "U" => [0,1],
        "D"=> [0,-1]
        }
    curr_pos = [0,0]
    
    moves_arr = moves.split("")
    moves_arr.each do |m|
        curr_pos = [curr_pos[0] + moves_hash[m][0], curr_pos[1] + moves_hash[m][1]]
    end
    
    curr_pos == [0,0]
end