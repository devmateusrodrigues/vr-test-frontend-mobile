import 'dart:convert';

import 'package:http/http.dart' as http;

import '../utils/constants.dart';

class LoginService {

  static Future<http.Response> login (String email, String senha) {
    return http.post(
      Uri.parse(Constants.loginUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String> {
          'email': email,
          'senha': senha
        }
      ),
    );
  }
}