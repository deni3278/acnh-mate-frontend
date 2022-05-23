import 'package:http/http.dart' as http;

class Api {
  static Future<http.Response> fetch(String type) {
    return http.get(Uri.parse('http://20.223.239.183:9092/api/$type'));
  }
}
