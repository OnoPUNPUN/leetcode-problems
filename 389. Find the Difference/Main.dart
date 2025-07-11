class Solution {
  String findTheDifference(String s, String t) {
    List<String> sSorted = s.split('')..sort();
    List<String> tSorted = t.split('')..sort();

    for (int i = 0; i < tSorted.length; i++) {
      if (i >= sSorted.length || sSorted[i] != tSorted[i]) {
        return tSorted[i];
      }
    }
    return "";
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findTheDifference("abcd", "abcde"));
  print(solution.findTheDifference("", "y"));
}
