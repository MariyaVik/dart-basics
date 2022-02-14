import 'package:dart_basics/dart_basics.dart';
// import 'package:dart_basics/src/task_6.dart';
// import 'package:dart_basics/src/task_7.dart';
import 'package:dart_basics/src/task_8.dart';

void main() {
  // Point p1 = Point(5, -9, 2.21);
  // Point p2 = Point(-7, -21, 7);

  // print(p1.distanceTo(p2));

  //print(2.root(2));

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
