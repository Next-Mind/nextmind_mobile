// ignore_for_file: unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreenViewmodel extends GetxController{

  TextEditingController searchPeopleController = TextEditingController();
  TextEditingController addPeopleController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  bool isValidEmail(String email) {
    final RegExp regex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return regex.hasMatch(email);
  }
  
}