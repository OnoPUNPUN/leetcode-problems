class Solution {
  void reverseString(List<String> s) {
    int l = 0;
    int r = s.length - 1;

    while (l < r) {
      String t = s[l];
      s[l] = s[r];
      s[r] = t;
      l++;
      r--;
    }
  }
}

void main() {
  Solution solution = Solution();
  List<String> s = ["H", "a", "n", "n", "a", "h"];

  solution.reverseString(s);
  print(s);
}
