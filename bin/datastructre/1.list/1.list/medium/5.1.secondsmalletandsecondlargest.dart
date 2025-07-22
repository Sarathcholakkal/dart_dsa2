import 'dart:math';

// this problem similar to max and min find in single itearation using dyanamic programming

class Solution {
  List<int> maxProfit(List<int> nums) {
    int smallest = nums[0];
    int largest = nums[0];

    for (int i = 1; i < nums.length; i++) {
      smallest = min(smallest, nums[i]);
      largest = max(largest, nums[i]);
    }

    return [largest, smallest];
  }
}

void main() {
  Solution solution = Solution();
  List<int> prices = [7, 1, 5, 3, 6, 4];
  List<int> result = solution.maxProfit(prices);
  print('Maximum Profit: \$${result}');
}
