# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(stocks)
    highest_value = 0
    highest_value_index = 0

    reversed_stocks = stocks.reverse()
    reversed_stocks.each_with_index { |n, index|
      if n != stocks[0]
        if n > highest_value
          highest_value = n
          highest_value_index = index
        end
      end
    }

    stocks_until_max = stocks[0..highest_value_index]

    lowest_value = stocks_until_max[0]
    lowest_value_index = 0

    stocks_until_max.each_with_index { |n, index|
      if n < lowest_value
        lowest_value = n
        lowest_value_index = index
      end
    }

    result = [lowest_value_index, highest_value_index]

    p result
end

stock_picker([17,3,6,9,15,8,6,1,10])