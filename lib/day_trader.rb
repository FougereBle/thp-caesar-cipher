def get_gain(buy_price, sell_price)
  sell_price - buy_price
end

def get_best_deal(prices)
  best_deal = nil
  highter_gain = 0

  prices.each.with_index do |buy_price, i| # Buy
    prices.each.with_index do |sell_price, j| # Sell
      if j > i
        gain = get_gain(buy_price, sell_price)

        if gain > highter_gain
          highter_gain = gain
          best_deal = [buy_price, sell_price]
        end
      end
    end
  end

  best_deal
end
