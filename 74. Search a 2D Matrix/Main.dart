bool searchMatrix(List<List<int>> matrix, int target) {
  if (matrix.isEmpty || matrix[0].isEmpty) {
    return false;
  }

  int rows = matrix.length;
  int cols = matrix[0].length;

  int low = 0;
  int high = (rows * cols) - 1;

  while (low <= high) {
    int mid = low + (high - low) ~/ 2;
    int row = mid ~/ cols;
    int col = mid % cols;

    if (matrix[row][col] == target) {
      return true;
    } else if (matrix[row][col] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return false;
}
