void main() {
  List<int> nums = [1, 2, 3, 1, 1, 3];
  print(numIdenticalPairs(nums));
}

int numIdenticalPairs(List<int> nums) {
  int count = 0;

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j] && i < j) {
        count++;
      }
    }
  }
  return count;
}
