import 'package:dart_basics/dart_basics.dart';
import 'package:test/test.dart';

void main() {
  group('Тестируем функции задачи 1', () {
    test('НОД', () {
      expect(gcd(36, 12), 12);
    });
    test('НОК', () {
      expect(lcm(36, 12), 36);
    });
    test('Разложение на множители', () {
      expect(simp(21), [3, 7]);
    });
  });
}
