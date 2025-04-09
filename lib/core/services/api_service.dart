import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/env.dart';
import 'network_exception.dart';

class ApiService {
  Future<dynamic> get(String endpoint) async {
    final response = await http.get(Uri.parse('${Env.baseUrl}/$endpoint'));
    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw NetworkException.fromStatusCode(response.statusCode);
    }
  }
}
