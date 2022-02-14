String demicalToBinary(int n) {
  if (n == 0) return "0";

  bool isPos = n > 0;
  String result = "";

  while (n.abs() > 0) {
    result = (n % 2).toString() + result;
    n ~/= 2;
  }

  return isPos ? result : "-" + result;
}

int? binaryToDemical(String n) {
  bool neg = false;
  if (n[0] == "-") {
    neg = true;
    n = n.replaceRange(0, 1, "");
  }

  if (int.tryParse(n) != null) {
    int result = 0;
    for (var i = n.length - 1, p = 1; i >= 0; i--, p *= 2) {
      result = result + p * int.parse(n[i]);
    }
    return neg ? -result : result;
  } else {
    print("Недопустимое значение");
    return null;
  }
}
