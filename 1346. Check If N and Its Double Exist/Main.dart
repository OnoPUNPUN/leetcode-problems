bool checkIfExist(List<int> arr) {
  arr.sort();

  for (int i = 0; i < arr.length; i++) {
    int target = 2 * arr[i];
    int start = 0;
    int end = arr.length - 1;

    while (start <= end) {
      int mid = (start + (end - start) / 2).toInt();

      if (arr[mid] == target) {
        if (mid != i) {
          return true;
        } else {
          if (arr[i] == 0) {
            if ((i > 0 && arr[i - 1] == 0) ||
                (i < arr.length - 1 && arr[i + 1] == 0)) {
              return true;
            }
          }
          break;
        }
      } else if (arr[mid] < target) {
        start = mid + 1;
      } else {
        end = mid - 1;
      }
    }
  }
  return false;
}

void main() {
  List<int> arr = [10, 2, 5, 3];
  print(checkIfExist(arr));
}
