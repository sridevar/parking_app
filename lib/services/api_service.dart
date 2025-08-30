import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://YOUR_SERVER_IP:5000";

  static Future<String> login(String email, String password) async {
    final response = await http.post(Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data['role']; // "admin" or "client"
    }
    return "";
  }
}
