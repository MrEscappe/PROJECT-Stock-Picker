# Implement a method #stock_picker that takes in an array of
# stock prices, one for each hypothetical day. It should return a pair of days
# representing the best day to buy and the best day to sell. Days start at 0.

stock_picker = (1..365).to_a.shuffle

def picker(prices)
    buy = 0
    sell = 0   
    result = 0 
    profit = 0
    prices.each_with_index do |buy_value, sell_day|
        prices.each_with_index do |sell_value, buy_day|
            if buy_value - sell_value > profit && sell_day > buy_day
                profit = buy_value - sell_value
                buy = buy_day
                sell = sell_day
                result = [buy, sell] 
            end
        end        
    end    
    puts "Best day to buy is #{buy}, the best day to sell is #{sell} and the profit is #{profit}"
    result
end

picker(stock_picker)


