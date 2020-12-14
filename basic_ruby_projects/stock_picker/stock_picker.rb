def stock_picker(stock)

  highest_margin = 0
  best_profit = []

  stock.each_with_index do |daily_price_1, index_1|
    stock.each_with_index do |daily_price_2, index_2|
      if daily_price_2 - daily_price_1 > highest_margin && index_2 > index_1
        highest_margin = daily_price_2 - daily_price_1
        best_profit[0] = index_2
        best_profit[1] = index_1
        # puts best_profit
      end
    end
  end
  puts best_profit
end


stock_picker([17,3,6,9,15,8,6,1,10])



# Take first element and substract it from the second element then third etc...
# Then take second element and subtract it from third element etc...
# Biggest positive is the result, put it in an array of size 2

