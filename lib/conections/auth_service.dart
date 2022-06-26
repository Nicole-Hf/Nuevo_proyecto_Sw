// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:convert';
import 'package:app_conductor/conections/globals.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future<http.Response> register(String name, String telefono) async {
    Map data = {
      "name": name,
      "telefono": telefono,
    };
    var body = json.encode(data);
    var url = Uri.parse('${baseUrl}auth/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String telefono) async {
    Map data = {
      "telefono": telefono,
    };
    var body = json.encode(data);
    var url = Uri.parse('${baseUrl}auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}