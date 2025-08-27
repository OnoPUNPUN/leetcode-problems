class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (var c in s.split('')) {
      if (c == '(' || c == '{' || c == '[') {
        stack.add(c); // push
      } else {
        if (stack.isEmpty) return false;

        String top = stack.removeLast(); // pop

        if ((c == ')' && top != '(') ||
            (c == '}' && top != '{') ||
            (c == ']' && top != '[')) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}

void main() {
  var sol = Solution();

  print(sol.isValid("()")); // true
  print(sol.isValid("()[]{}")); // true
  print(sol.isValid("(]")); // false
  print(sol.isValid("([)]")); // false
  print(sol.isValid("{[]}")); // true
}
