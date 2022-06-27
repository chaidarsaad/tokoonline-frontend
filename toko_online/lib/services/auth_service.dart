import 'dart:convert';
import 'package:toko_online/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://tokosepatu-backend.test/api';

  Future<UserModel> register({
    required String name,
    required String email,
    required String username,
    required String password,
  }) async {
    var Url = '$baseUrl/register';
    var headers = {'Content-Type': 'appLication/json'};
    var body = jsonEncode({
      'name': name,
      'email': email,
      'username': username,
      'password': password,
    });

    var response = await http.post(
      Uri.parse('http://tokosepatu-backend.test/api/register'),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = '$baseUrl/login';
    var header = {'Content-Type': 'appLication/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse('http://tokosepatu-backend.test/api/login'),
      headers: header,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
