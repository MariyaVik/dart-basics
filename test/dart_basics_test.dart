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

  group('Тестируем функции задачи 2', () {
    test('Из десятичной в двоичную', () {
      expect(DemicalToBinary(8), "1000");
    });
    test('Из двоичной в десятичную', () {
      expect(BinaryToDemical("111"), 7);
    });
  });
}
