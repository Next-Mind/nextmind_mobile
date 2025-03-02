import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/form_builder/form.dart';

class FormService extends GetxService {
  Future<FormModel> loadFormData(String assetPath) async {
    try {
      final jsonString = await rootBundle.loadString(assetPath);
      final jsonData = json.decode(jsonString);
      return FormModel.fromJson(jsonData);
    } catch (e) {
      throw Exception('Failed to load form data: $e');
    }
  }
}
