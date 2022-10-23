import 'dart:convert';

import 'package:caramelo/view/account/models/user.dart';
import 'package:caramelo/view/account/support/account_support.dart';
import 'package:http/http.dart' as http;

class AccountApiService implements AccountSupport {
  static Uri url = Uri.parse('https://example.com/whatsit/create');
  @override
  Future<User> getUser() async {
    User user = User();
    http.Response response = await http.get(url);
    if (200 == response.statusCode) {
      var parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      user = parsed.map<User>((json) => User.fromJson(json)).toList();
      return user;
    }
    return user;
  }
}
