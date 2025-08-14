String largestGoodInteger(String num) {
  for (int i = 9; i >= 0; i--) {
    String t = i.toString() * 3;

    if (num.contains(t)) {
      return t;
    }
  }

  return "";
}

void main() {
  print(largestGoodInteger("6777133339"));
  print(largestGoodInteger("2300019"));
  print(largestGoodInteger("42352338"));
}
