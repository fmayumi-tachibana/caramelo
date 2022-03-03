import 'dart:convert';
import 'dart:io';

import 'package:caramelo/models/exceptions.dart';
import 'package:http/http.dart' as http;

abstract class WebApiServices {
  late final Function toTypeObject;
  WebApiServices({required this.toTypeObject});
  static Uri url = Uri.parse('https://example.com/whatsit/create');

  Future<T> request<T>() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final json = jsonDecode(response.body).cast<Map<String, dynamic>>();
        final T object = toTypeObject(json);
        return object;
      } else {
        throw <T>[];
      }
    } on SocketException catch (e) {
      throw NoInternetException('No Internet');
    } on HttpException {
      throw NoServiceFoundException('No Service Found');
    } on FormatException {
      throw InvalidFormatException('Invalid Data Format');
    } catch (e) {
      throw UnknownException(e.toString());
    }
  }

  static T parse<T>(String body) {
    final parsed = json.decode(body).cast<Map<String, dynamic>>();
    final T object = parsed.fromJson() as T;
    return object;
  }
}
