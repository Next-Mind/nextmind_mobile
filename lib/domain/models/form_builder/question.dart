class Question {
  final String id;
  final String title;
  final String fieldType;
  final bool isRequired;
  final String? placeholder;
  final List<String>? options;
  final String? validationRegex;
  final String? errorMessage;
  final String? helperText;

  Question({
    required this.id,
    required this.title,
    required this.fieldType,
    required this.isRequired,
    this.placeholder,
    this.options,
    this.validationRegex,
    this.errorMessage,
    this.helperText,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      title: json['title'],
      fieldType: json['fieldType'],
      isRequired: json['isRequired'] ?? false,
      placeholder: json['placeholder'],
      options:
          json['options'] != null ? List<String>.from(json['options']) : null,
      validationRegex: json['validationRegex'],
      errorMessage: json['errorMessage'],
      helperText: json['helperText'],
    );
  }
}
