class Solution {
  int lengthOfLastWord(String s) {
    final words = s.trim().split(' ');

    if (words.isEmpty) {
      return 0;
    }

    return words.last.length;
  }
}

void main() {
  Solution solution = Solution();
  String s = "Hello World";

  print(solution.lengthOfLastWord(s));
}
