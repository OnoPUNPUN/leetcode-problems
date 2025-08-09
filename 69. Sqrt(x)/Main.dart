int mySqrt(int x) {
  int start = 0;
  int end = x;

  while (start < end) {
    int mid = (start + (end - start) / 2).toInt();

    if (mid <= x / mid) {
      start = mid;
    } else {
      end = mid - 1;
    }
  }
  return start;
}

void main() {
  int x = 4;

  print(mySqrt(x));
}
