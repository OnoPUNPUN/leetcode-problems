int maximum69Number(int num) {
  String number = num.toString();

  int index = number.indexOf("6");

  if (index == -1) {
    return num;
  }

  String newNumber =
      number.substring(0, index) + "9" + number.substring(index + 1);

  return int.parse(newNumber);
}

void main() {
  print(maximum69Number(9669));
}
