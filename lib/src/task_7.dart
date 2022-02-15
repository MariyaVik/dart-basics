double _pow(double x, int degree) {
  double result = 1;
  for (var i = 0; i < degree; i++) {
    result *= x;
  }
  return result;
}

extension RootOfNum on num {
  double root(int rootDegree, [double eps = 0.001]) {
    if (this == 0) return 0;

    if (this < 0) {
      if (rootDegree % 2 == 0) {
        throw ArgumentError();
      }
    }

    double x0 = abs() * 1;
    double result =
        ((rootDegree - 1) * x0 + this / _pow(x0, rootDegree - 1)) / rootDegree;

    while ((x0 - result).abs() > eps) {
      x0 = result;
      result = ((rootDegree - 1) * result + this / _pow(x0, rootDegree - 1)) /
          rootDegree;
    }

    return result;
  }
}
