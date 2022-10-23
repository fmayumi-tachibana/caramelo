import 'dart:convert';
import 'dart:io';

import 'package:caramelo/core/models/exceptions.dart';
import 'package:http/http.dart' as http;

abstract class WebApiServices {
  WebApiServices({required this.toTypeObject});

  late final Function toTypeObject;
  static Uri url = Uri.parse('https://example.com/whatsit/create');

  Future<T> request<T>() async {
    try {
      http.Response response = await http.get(url);
      if (200 == response.statusCode) {
        Map<String, dynamic> json =
            jsonDecode(response.body).cast<Map<String, dynamic>>();

        T object = toTypeObject(json);
        return object;
      } else {
        throw <T>[];
      }
    } on SocketException catch (e) {
      throw NoInternetException(e.message);
    } on HttpException catch (e) {
      throw NoServiceFoundException(e.message);
    } on FormatException catch (e) {
      throw InvalidFormatException(e.message);
    } catch (e) {
      throw UnknownException(e.toString());
    }
  }

  static T parse<T>(String body) {
    dynamic parsed = json.decode(body).cast<Map<String, dynamic>>();
    T object = parsed.fromJson() as T;
    return object;
  }
}
