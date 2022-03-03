import 'package:caramelo/modules/account/models/user.dart';

abstract class AccountSupport {
  Future<User> getUser();
}
