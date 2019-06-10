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