class Solution {
  bool isPalindrome(String s) {
    String n = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    String rev = "";

    for (int i = n.length - 1; i >= 0; i--) {
      rev += n[i];
    }

    if (rev == n) {
      return true;
    }
    return false;
  }
}

void main() {
  Solution sl = new Solution();
  String s = "A man, a plan, a canal: Panama";
  print(sl.isPalindrome(s));
}
