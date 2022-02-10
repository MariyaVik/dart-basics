import 'dart:math';

int gcd(int a, int b) {
  int c;
  while (b > 0) {
    c = b;
    b = a % b;
    a = c;
  }
  return a;
}

int lcm(int a, int b) {
  int pr = a * b;
  int c;
  while (b > 0) {
    c = b;
    b = a % b;
    a = c;
  }
  return pr ~/ a;
}

List<int> simp(int n) {
  List<int> simp = [];
  int i = 2;
  while (i < sqrt(n).toInt()) {
    while (n % i == 0) {
      simp.add(i);
      n ~/= i;
    }
    i += 1;
  }
  if (n > 1) simp.add(n);
  return simp;
}
