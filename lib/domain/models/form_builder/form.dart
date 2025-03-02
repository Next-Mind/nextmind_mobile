import 'package:nextmind_mobile/domain/models/form_builder/question.dart';

class FormModel {
  final String formTitle;
  final String formDescription;
  final List<Question> questions;

  FormModel({
    required this.formTitle,
    required this.formDescription,
    required this.questions,
  });

  factory FormModel.fromJson(Map<String, dynamic> json) {
    return FormModel(
      formTitle: json['formTitle'],
      formDescription: json['formDescription'],
      questions: (json['questions'] as List)
          .map((question) => Question.fromJson(question))
          .toList(),
    );
  }
}
