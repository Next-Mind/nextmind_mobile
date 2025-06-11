// ignore_for_file: unused_local_variable, unused_import, avoid_print, body_might_complete_normally_nullable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/repositories/chat/contact_repository.dart';
import 'package:nextmind_mobile/data/services/chat/contact_service.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:nextmind_mobile/ui/chat/screens/chat_contact_list.dart';
import 'package:result_dart/result_dart.dart';
import '../../../data/models/user_model.dart';


class ChatContactListViewmodel extends GetxController {
  final searchPeopleController = TextEditingController();
  final addPeopleController = TextEditingController();

  final users = <UserModel>[].obs;
  final isLoading = false.obs;
  final error = ''.obs;
  final RxList<UserModel> availableUsers = <UserModel>[].obs;
  final RxBool isAdding = false.obs;
  final RxString searchTerm = ''.obs;
  final RxList<UserModel> filteredUsers = <UserModel>[].obs;

  late ContactRepository repository;

  @override
  void onInit() {
    super.onInit();
    fetchContacts();
    ever(searchTerm, (_) => _filterContacts());
  }

  Future<void> fetchContacts() async {
    var token = '';
    await AuthRepository.to.getUser().onSuccess((user) {token = user.token;}); 
    repository = ContactRepository(ContactService('https://api.nextmind.tech', token: token.toString()));
    try {
      isLoading.value = true;
      error.value = '';
      final result = await repository.fetchContacts();
      users.assignAll(result);
      _filterContacts();
    } catch (e) { 
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  bool isValidEmail(String email) {
    final RegExp regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
    return regex.hasMatch(email);
  }

  Future<void> getAvailableUsers() async {
  try {
    isLoading.value = true;
    availableUsers.value = await repository.fetchUsersToAdd();
  } catch (e, stack) {
    error.value = e.toString();
    print("Erro ao buscar usuários: $e");
    print(" Stacktrace: $stack");
  } finally {
    isLoading.value = false;
  }
  }

  Future<UserModel?> addNewContact(int id) async {
    if (users.any((u) => u.id == id)) {
      Get.snackbar('Atenção', 'Este contato já está na sua lista!');
      return null;
    }
    try {
      isAdding.value = true;
      final newUser = await repository.addContact(id);
      users.add(newUser);
      await fetchContacts();
      return newUser;
    } on DioException catch (e) {
        final statusCode = e.response?.statusCode;
        final message = e.response?.data['message'] ?? 'Erro desconhecido';

        if (statusCode == 400 && message.contains('already')) {
          Get.snackbar('Atenção', 'Este contato já está na sua lista!');
        } else {
          Get.snackbar('Erro', 'Não foi possível adicionar este contato');
        }
        print("ERRO: $message"); //Apenas para debug
        return null;
      } catch (e) {
        Get.snackbar('Erro', 'Não foi possivel adicionar este contato');
        print("ERRO: $e"); //Apenas para debug
        return null;
      } finally {
        isAdding.value = false;
    }
  }

  Future<void> deleteContact(int id) async{
    try {
      await repository.deleteContact(id);
      users.removeWhere((u) => u.id == id);
      await fetchContacts();
      Get.snackbar("Sucesso", "Contato excluido com sucesso!");
    } catch (e) {
      Get.snackbar('Erro', 'Não foi possível excluir o contato!');
      print('ERRO: $e');
    }
  }

  Future<void> updateContact (int id, String newName) async{
    try {
      await repository.updateContact(id, newName);
      int index = users.indexWhere((u) => u.id == id);
      if(index != -1){
        users[index].nickname = newName;
        users.refresh();
      }
    } catch (e) {
      Get.snackbar('Erro', 'Não foi possível atualizar o contato.');
    }
  }

  void _filterContacts() {
    final term = searchTerm.value.toLowerCase();
    if (term.isEmpty) {
      filteredUsers.assignAll(users);
    } else {
      filteredUsers.assignAll(
        users.where((u) =>
          u.nickname.toLowerCase().contains(term)
        ),
      );
    }
  }
}
