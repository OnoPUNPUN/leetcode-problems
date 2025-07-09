import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    List<int> bestBuy = List.filled(prices.length, 0x7FFFFFFFFFFFFFFF);

    bestBuy[0] = prices[0];

    for (int i = 1; i < prices.length; i++) {
      bestBuy[i] = min(bestBuy[i - 1], prices[i - 1]);
    }

    int maxProfit = 0;

    for (int i = 0; i < prices.length; i++) {
      int currentProfit = prices[i] - bestBuy[i];
      maxProfit = max(maxProfit, currentProfit);
    }

    return maxProfit;
  }
}

void main() {
  Solution solution = Solution();

  List<int> prices = [7, 1, 5, 3, 6, 4];

  print(solution.maxProfit(prices));
}
