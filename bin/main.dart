// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"
String simplify(String fraction) {
  List numbers = fraction.split('/');
//print(numbers);
  int hcf =1;
  int num = int.parse(numbers[0]);
  int den = int.parse(numbers[1]);
  for (int i = 1; i < (num < den ? num : den)+1; i++) {
    if (num % i == 0 && den % i == 0) {
      hcf = i;
    }
  }
//  print(factors);
  return '${(num ~/ hcf)}/${(den ~/ hcf)}';
}

main() {
  String s = simplify('250/300');
  print(s);
}
