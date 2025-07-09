class Solution {
  bool isSubsequence(String s, String t) {
    int m = s.length;
    int n = t.length;

    int i = 0, j = 0;

    for (; i < m && j < n; j++) {
      if (s[i] == t[j]) {
        ++i;
      }
    }

    return i == m;
  }
}

void main() {
  Solution solution = Solution();

  String s = "axc";
  String t = "ahbgdc";

  print(solution.isSubsequence(s, t));
}
