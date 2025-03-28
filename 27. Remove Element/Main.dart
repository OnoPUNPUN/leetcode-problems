void main() {
  List<int> nums = [3, 2, 2, 3];
  int val = 3;

  print(removeElement(nums, val));
}

int removeElement(List<int> nums, int val) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == val) {
      nums.removeAt(i);
      i--;
    }
  }
  return nums.length;
}
