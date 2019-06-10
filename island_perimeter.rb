# leetcode

# You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water.

# Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

# The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

 

# Example:

# Input:
# [[0,1,0,0],
#  [1,1,1,0],
#  [0,1,0,0],
#  [1,1,0,0]]

# Output: 16

# Explanation: The perimeter is the 16 yellow stripes in the image below:

def island_perimeter(grid)
    perimeter = 0
    last_row = grid.length - 1
    
    grid.each_with_index do |row, row_idx|
        row.each_with_index do |col, col_idx|
            last_col = row.length - 1
            
            if col == 1
                if row_idx == 0
                    perimeter += 1
                else
                    perimeter += 1 if grid[row_idx - 1][col_idx] == 0
                end
                
                if col_idx == 0
                    perimeter += 1
                elsif row[col_idx - 1] == 0
                    perimeter += 1
                end
                
                if col_idx == last_col
                    perimeter += 1
                elsif row[col_idx + 1] == 0
                    perimeter += 1
                end
                
                if row_idx == last_row
                    perimeter += 1
                elsif grid[row_idx + 1][col_idx] == 0
                    perimeter += 1
                end
            end
        end
    end
    perimeter
end