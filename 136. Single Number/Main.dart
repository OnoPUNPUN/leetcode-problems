int singleNumber(List<int> nums) {
  int single = 0;

  for (int num in nums) {
    single ^= num;
  }

  return single;
}

void main() {
  print(singleNumber([2, 2, 1]));
  print(singleNumber([4, 1, 2, 1, 2]));
}
