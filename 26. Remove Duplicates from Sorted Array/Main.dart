int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) {
    return 0;
  }

  int k = 1;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[k] = nums[i];
      k++;
    }
  }

  return k;
}

void main() {
  print(removeDuplicates([1, 1, 2]));
  print(removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}
