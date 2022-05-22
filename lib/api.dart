import 'package:http/http.dart' as http;

class Api {
  static Future<http.Response> fetch(String type) {
    return http.get(Uri.parse('http://20.101.44.156:8092/api/$type'));
  }
}
