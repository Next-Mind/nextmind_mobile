import 'dart:convert';

import 'package:logger/logger.dart';

class SignUpForm {
  String name;
  DateTime? birthday;
  String email;
  String ra;
  String password;

  bool formSubmitted = false;

  String currentGrade;
  String reasonsForUsingApp;
  String hasTherapyExperience;
  String lastPsychologicalExam;
  String academicImpactOnMentalHealth;
  String restAndLeisureLevel;
  String practicesPhysicalActivity;
  String averageSleepHours;
  String eatingHabitsClassification;

  final Logger _logger = Logger();

  SignUpForm({
    this.currentGrade = '',
    this.reasonsForUsingApp = '',
    this.hasTherapyExperience = '',
    this.lastPsychologicalExam = '',
    this.academicImpactOnMentalHealth = '',
    this.restAndLeisureLevel = '',
    this.practicesPhysicalActivity = '',
    this.averageSleepHours = '',
    this.eatingHabitsClassification = '',
    this.name = '',
    this.email = '',
    this.ra = '',
    this.password = '',
  });

  void setEmail(String email) {
    _logger.d("Input email changed: ${this.email}");
    this.email = email;
  }

  void setPassword(String password) {
    _logger.d("Input password changed: ${this.password}");
    this.password = password;
  }

  void setName(String name) {
    _logger.d("Input name changed: ${this.name}");
    this.name = name;
  }

  void setBirthday(DateTime birthday) {
    _logger.d("Input birthday changed: ${this.birthday}");
    this.birthday = birthday;
  }

  void setRa(String ra) {
    _logger.d("Input ra changed: ${this.ra}");
    this.ra = ra;
  }

  void setCurrentGrade(String currentGrade) {
    _logger.d("Input currentGrade changed: ${this.currentGrade}");
    this.currentGrade = currentGrade;
  }

  void setReasonsForUsingApp(String reasonsForUsingApp) {
    _logger.d("Input reasonsForUsingApp changed: ${this.reasonsForUsingApp}");
    this.reasonsForUsingApp = reasonsForUsingApp;
  }

  void setHasTherapyExperience(String hasTherapyExperience) {
    _logger
        .d("Input hasTherapyExperience changed: ${this.hasTherapyExperience}");
    this.hasTherapyExperience = hasTherapyExperience;
  }

  void setLastPsychologicalExam(String lastPsychologicalExam) {
    _logger.d(
        "Input lastPsychologicalExam changed: ${this.lastPsychologicalExam}");
    this.lastPsychologicalExam = lastPsychologicalExam;
  }

  void setAcademicImpactOnMentalHealth(String academicImpactOnMentalHealth) {
    _logger.d(
        "Input academicImpactOnMentalHealth changed: ${this.academicImpactOnMentalHealth}");
    this.academicImpactOnMentalHealth = academicImpactOnMentalHealth;
  }

  void setRestAndLeisureLevel(String restAndLeisureLevel) {
    _logger.d("Input restAndLeisureLevel changed: ${this.restAndLeisureLevel}");
    this.restAndLeisureLevel = restAndLeisureLevel;
  }

  void setPracticesPhysicalActivity(String practicesPhysicalActivity) {
    _logger.d(
        "Input practicesPhysicalActivity changed: ${this.practicesPhysicalActivity}");
    this.practicesPhysicalActivity = practicesPhysicalActivity;
  }

  void setAverageSleepHours(String averageSleepHours) {
    _logger.d("Input averageSleepHours changed: ${this.averageSleepHours}");
    this.averageSleepHours = averageSleepHours;
  }

  void setEatingHabitsClassification(String eatingHabitsClassification) {
    _logger.d(
        "Input eatingHabitsClassification changed: ${this.eatingHabitsClassification}");
    this.eatingHabitsClassification = eatingHabitsClassification;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'birthday': birthday,
      'email': email,
      'ra': ra,
      'password': password,
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
