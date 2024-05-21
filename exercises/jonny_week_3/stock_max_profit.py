# 5/21/2024 - Jonny exercise 2 - Max profit from stock prices
# You are given a list of stock prices, where the stock's price on the ith day is stored as the ith element
# of the prices list.

# You want to maximize your profit trading the stock, but are only allowed to buy the stock once and sell
# it once on a future day.

# Write a function called max_profit which takes in this list of stock prices,
# and computes the max profit possible. Return 0 if you can't make any profit.

def max_profit(prices: list[int]):
    if len(prices) < 2:
        return 0

    max_profit_value = 0
    min_price = prices[0]

    for price in prices:
        min_price = min(price, min_price)
        price_difference = price - min_price
        max_profit_value = max(price_difference, max_profit_value)
    print(max_profit_value)
    return max_profit_value
    

    

if __name__ == "__main__":
    assert(max_profit([9,1,3,6,4,8,3,5,5]) == 7)
    assert(max_profit([6,20,1,10])==14)
