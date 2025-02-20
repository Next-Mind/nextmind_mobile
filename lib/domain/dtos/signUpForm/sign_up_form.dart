import 'dart:convert';

class SignUpForm {
  String currentGrade;
  String reasonsForUsingApp;
  bool hasTherapyExperience;
  String lastPsychologicalExam;
  String academicImpactOnMentalHealth;
  String restAndLeisureLevel;
  String practicesPhysicalActivity;
  String averageSleepHours;
  String eatingHabitsClassification;

  SignUpForm(
      {this.currentGrade = '',
      this.reasonsForUsingApp = '',
      this.hasTherapyExperience = false,
      this.lastPsychologicalExam = '',
      this.academicImpactOnMentalHealth = '',
      this.restAndLeisureLevel = '',
      this.practicesPhysicalActivity = '',
      this.averageSleepHours = '',
      this.eatingHabitsClassification = ''});

  Map<String, dynamic> toMap() {
    return {
      'currentGrade': currentGrade,
      'reasonsForUsingApp': reasonsForUsingApp,
      'hasTherapyExperience': hasTherapyExperience,
      'lastPsychologicalExam': lastPsychologicalExam,
      'academicImpactOnMentalHealth': academicImpactOnMentalHealth,
      'restAndLeisureLevel': restAndLeisureLevel,
      'practicesPhysicalActivity': practicesPhysicalActivity,
      'averageSleepHours': averageSleepHours,
      'eatingHabitsClassification': eatingHabitsClassification,
    };
  }

  String toJson() {
    return jsonEncode(toMap());
  }
}
