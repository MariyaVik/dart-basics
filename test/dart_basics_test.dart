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

  group('Тестируем функции задачи 3', () {
    test('Строка с числами', () {
      expect(NumInStr("Тут есть число 2 и число 21.21"), [2, 21.21]);
    });
    test('Из двоичной в десятичную', () {
      expect(NumInStr("А здесь нет чисел :("), []);
    });
  });

  group('Тестируем функции задачи 4', () {
    test('Пустая коллекция', () {
      expect(countOfWords([]), {});
    });
    test('Непустая коллекция', () {
      expect(
          countOfWords([
            "Тут",
            "есть",
            "и",
            "число",
            "2",
            "и",
            "число",
            "21",
            "и",
            "ещё",
            "21"
          ]),
          {
            "Тут": 1,
            "есть": 1,
            "число": 2,
            "2": 1,
            "и": 3,
            "21": 2,
            "ещё": 1,
          });
    });
  });

  group('Тестируем функции задачи 5', () {
    test('Список с "числами"', () {
      expect(
          findInt(['one', 'two', 'zero', 'cat', 'zero', 'nine']), [1, 2, 0, 9]);
    });
    test('Список без "чисел"', () {
      expect(findInt(['cat', 'dog']), []);
    });
  });

  group('Тестируем функции задачи 6', () {
    Point p1 = Point(5, -9, 2.5);
    Point p2 = Point(-7, -25, 7);
    test('Нулевое расстояние', () {
      expect(p1.distanceTo(p1), 0);
    });
    test('Расстояние', () {
      expect(p1.distanceTo(p2), 20.5);
    });
  });
}
