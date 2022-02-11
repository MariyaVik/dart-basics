String DemicalToBinary(int n) {
  String result = "";
  while (n > 0) {
    result = (n % 2).toString() + result;
    n ~/= 2;
  }
  return result;
}

int BinaryToDemical(String n) {
  int result = 0;
  for (var i = n.length - 1, p = 1; i >= 0; i--, p *= 2) {
    result = result + p * int.parse(n[i]);
  }
  return result;
}
