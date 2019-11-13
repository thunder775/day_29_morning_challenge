// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"
String simplify(String fraction) {
  List numbers = fraction.split('/');
//print(numbers);
  List factors = [];
  int x = int.parse(numbers[0]);
  int y = int.parse(numbers[1]);
  for (int i = 1; i < (x < y ? x : y)+1; i++) {
    if (x % i == 0 && y % i == 0) {
      factors.add(i);
    }
  }
//  print(factors);
  return '${(x ~/ factors[factors.length - 1])}/${(y ~/ factors[factors.length - 1])}';
}

main() {
  String s = simplify('4/3');
  print(s);
}
