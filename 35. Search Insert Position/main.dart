class Solution {
  int searchInsert(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;

    while (start <= end) {
      int mid = start + (end - start) ~/ 2;

      if (nums[mid] == target) {
        return mid;
      }
      if (target < nums[mid]) {
        end = mid - 1;
      } else {
        start = mid + 1;
      }
    }

    return start;
  }
}

void main() {
  Solution s = Solution();
  List<int> nums = [1, 3, 5, 6];
  int t = 5;
  print(s.searchInsert(nums, t));
}
