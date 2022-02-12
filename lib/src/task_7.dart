// Тут собственная функция pow

double _pow(double x, int degree) {
  double result = 1;
  for (var i = 0; i < degree; i++) {
    result *= x;
  }
  return result;
}

// ПОКА НЕ ТО... ПРОШЕРСТИТЬ ЗАНОВО
extension RootOfNum on num {
  double root(int rootDegree, [double eps = 0.001]) {
    double x0 = this * 1;
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
