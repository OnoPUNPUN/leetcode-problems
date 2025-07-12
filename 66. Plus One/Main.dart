List<int> plusOne(List<int> digits) {
  int n = digits.length;
  for (int i = n - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i]++;
      return digits;
    } else {
      digits[i] = 0;
    }
  }

  List<int> newDigits = List.filled(n + 1, 0);
  newDigits[0] = 1;

  return newDigits;
}

void main() {
  print(plusOne([1, 2, 3]));
  print(plusOne([4, 3, 2, 1]));
}
