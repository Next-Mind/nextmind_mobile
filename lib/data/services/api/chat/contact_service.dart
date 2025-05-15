// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nextmind_mobile/data/models/user_model.dart';

class ContactService {
  final String baseUrl;

  ContactService(this.baseUrl);

  Future<List<UserModel>> getContactList() async {
    final url = Uri.parse('$baseUrl/api/v1/contacts?page=1&results=5');
    final response = await http.get(url);
    print('STATUS: ${response.statusCode}');
    print('BODY: ${response.body}');


    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final users = jsonData['data']['users'] as List;
      return users.map((u) => UserModel.fromJson(u)).toList();
    } else {
      throw Exception('Erro ao buscar contatos');
    }
  }

  Future<List<UserModel>> getUsersToAdd() async {
    final url = Uri.parse('$baseUrl/api/v1/contacts/users?page=1&results=5');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final users = jsonData['data']['users'] as List;
      return users.map((u) => UserModel.fromJson(u)).toList();
    } else {
      throw Exception('Erro ao buscar usuários');
    }
  }
}