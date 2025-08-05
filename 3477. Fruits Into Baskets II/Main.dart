int numOfUnplacedFruits(List<int> fruits, List<int> baskets) {
  bool isUnplaced = false;
  for (int i = 0; i < fruits.length; i++) {
    if (baskets[i] >= fruits[i]) {
      isUnplaced = true;
    }
    if (isUnplaced) {
      return 1;
    }
  }

  return 0;
}

void mian() {
  List<int> fruits = [4, 2, 5];
  List<int> baskets = [3, 5, 4];
  numOfUnplacedFruits(fruits, baskets);
}
