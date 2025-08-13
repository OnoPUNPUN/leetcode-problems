bool isPowerOfThree(int n) {
  if (n <= 0) {
    return false;
  }

  while (n > 1) {
    if (n % 3 != 0) {
      return false;
    }
    n = (n / 3).toInt();
  }

  return true;
}

void main() {
  print(isPowerOfThree(45));
}
