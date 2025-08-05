List<int> sortArray(List<int> nums) {
  int n = nums.length;

  for (int i = 0; i < n - 1; i++) {
    bool isUnsorted = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (nums[j] > nums[j + 1]) {
        int temp = nums[j];
        nums[j] = nums[j + 1];
        nums[j + 1] = temp;

        isUnsorted = true;
      }
    }
    if (!isUnsorted) break;
  }

  return nums;
}

void main() {
  List<int> nums = [5, 2, 3, 1];

  print(sortArray(nums));
}
// List<int> sortArray(List<int> nums) {
//   nums.sort();
//   return nums;
// }

// void main() {
//   List<int> nums = [5, 2, 3, 1];

//   print(sortArray(nums));
// }
