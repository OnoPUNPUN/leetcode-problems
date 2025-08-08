int search(List<int> nums, int target) {
  int start = 0;
  int end = nums.length - 1;

  while (start <= end) {
    int mid = (start + (end - start) / 2).toInt();

    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }

  return -1;
}

void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];
  print(search(nums, 0));
}
