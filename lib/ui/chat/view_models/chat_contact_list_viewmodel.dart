// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/chat/contact_repository.dart';
import 'package:nextmind_mobile/data/services/api/chat/contact_service.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';
import '../../../data/models/user_model.dart';


class ChatContactListViewmodel extends GetxController {
  final searchPeopleController = TextEditingController();
  final addPeopleController = TextEditingController();

  final users = <UserModel>[].obs;
  final isLoading = false.obs;
  final error = ''.obs;

  late final ContactRepository repository;

  @override
  void onInit() {
    super.onInit();
    // final token = AuthRepository.to.getUser().onSuccess((user) => user.) 
    repository = ContactRepository(ContactService('https://nextmind.tech'));
    fetchContacts();
  }

  void fetchContacts() async {
    try {
      isLoading.value = true;
      error.value = '';
      final result = await repository.fetchContacts();
      users.assignAll(result);
    } catch (e) {
      error.value = e.toString();
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  bool isValidEmail(String email) {
    final RegExp regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
    return regex.hasMatch(email);
  }
}
