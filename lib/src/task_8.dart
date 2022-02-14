class User {
  String email;

  User(this.email);
  User.admin() : email = "main@yandex.ru";
}

class AdminUser extends User with MailSystem {
  AdminUser() : super.admin();
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin MailSystem on User {
  String getMailSystem() => email.split('@')[1];
}

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void delUser(T user) {
    users.remove(user);
  }

  void printEmails<L extends AdminUser>() {
    for (var element in users) {
      if (element.runtimeType == AdminUser) {
        AdminUser admin = element as AdminUser;
        print(admin.getMailSystem());
      } else {
        print(element.email);
      }
    }
  }
}
