# hackerrank

def howManyGames(p, d, m, s)
    money_left = s
    game_price = p
    total_games = 0
    
    until game_price > money_left
        money_left -= game_price
        game_price = game_price - d > m ? game_price - d : m
        total_games +=1
    end
    total_games
end