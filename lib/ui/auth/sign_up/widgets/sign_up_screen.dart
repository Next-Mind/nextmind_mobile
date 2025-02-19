import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/academic_impact_on_mental_health.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/average_sleep_hours.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/current_grade.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/eating_habits_classification.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/has_therapy_experience.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/last_psychological_exam.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/personal_info_form.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/practices_physical_activity.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/reasons_for_using_app.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/rest_and_leisure_level.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final viewModel = SignUpViewModel.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: viewModel.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            PersonalInfoForm(),
            CurrentGrade(),
            ReasonsForUsingApp(),
            HasTherapyExperience(),
            LastPsychologicalExam(),
            AcademicImpactOnMentalHealth(),
            RestAndLeisureLevel(),
            PracticesPhysicalActivity(),
            AverageSleepHours(),
            EatingHabitsClassification()
          ],
        ),
      ),
    );
  }
}
