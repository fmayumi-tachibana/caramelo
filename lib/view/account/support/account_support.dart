import 'package:caramelo/view/account/models/user.dart';

abstract class AccountSupport {
  Future<User> getUser();
}
