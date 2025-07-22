import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    // have to buy stock before it sell
    // buy maximum at low price sell maxi hight price
    //considerd first day buy first  ,and keep track on minimum price to buy
    // profit increase  while sell price - buy price increase keep track on it  , try to reduce buy  price as much low while move to each day   ,
    int mini = prices[0];
    int maxprofit = 0;
    int profit = 0;

    for (int i = 1; i < prices.length; i++) {
      profit = prices[i] - mini;
      maxprofit = max(profit, maxprofit);
      mini = min(mini, prices[i]);
    }

    return maxprofit;
  }
}

void main() {
  Solution solution = Solution();
  List<int> prices = [7, 1, 5, 3, 6, 4];
  int result = solution.maxProfit(prices);
  print('Maximum Profit: \$${result}');
}
// this problem  use dynamic programming ,which means  it remember pass of calculation
