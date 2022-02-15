import 'package:dart_basics/dart_basics.dart';

void main() {
//------------Task 1-----------------
  print("Задача 1");
  print(gcd(-20, 5));
  print(lcm(-20, 5));
  print(gcd(0, 0));
  print(lcm(0, 0));
  print(simp(21));

//------------Task 2-----------------
  print("\nЗадача 2");
  print(binaryToDemical("-111"));
  print(demicalToBinary(8));

//------------Task 3-----------------
  print("\nЗадача 3");
  print(numInStr("Тут есть число 2 и число 21.21"));
  print(numInStr("А здесь нет чисел :("));

//------------Task 4-----------------
  print("\nЗадача 4");
  print(countOfWords([
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
  ]));

//------------Task 5-----------------
  print("\nЗадача 5");
  print(findInt(['one', 'two', 'zero', 'cat', 'zero', 'nine']));

//------------Task 6-----------------
  print("\nЗадача 6");
  Point p1 = Point(5, -9, 2.21);
  Point p2 = Point(-7, -21, 7);

  print(p1.distanceTo(p2));

//------------Task 7-----------------
  print("\nЗадача 7");
  print((-8).root(3));
  try {
    print((-9).root(2));
  } catch (e) {
    print(e);
  }

//------------Task 8-----------------
  print("\nЗадача 8");
  User m = User('m@gmail.com');
  User p = User('p@mail.ru');
  User n = User('n@yandex.ru');
  User v = User('v@gmail.com');
  AdminUser admin = AdminUser();

  UserManager ourUser = UserManager();
  ourUser.addUser(m);
  ourUser.addUser(p);
  ourUser.addUser(n);
  ourUser.addUser(v);
  ourUser.printEmails();
  print("-----------");
  ourUser.delUser(p);
  ourUser.addUser(admin);
  ourUser.printEmails();
}
