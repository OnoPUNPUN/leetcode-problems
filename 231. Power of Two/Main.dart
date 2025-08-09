bool isPowerOfTwo(int n) {
  if (n <= 0) {
    return false;
  }

  while (n % 2 == 0) {
    n = (n / 2).toInt();
  }

  return n == 1;
}

void main() {
  int n = 3;

  print(isPowerOfTwo(n));
}
