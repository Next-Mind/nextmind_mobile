import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/widgets.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final viewModel = SignUpViewModel.to;

  final List<Widget> pages = [
    CurrentGrade(),
    ReasonsForUsingApp(),
    HasTherapyExperience(),
    LastPsychologicalExam(),
    AcademicImpactOnMentalHealth(),
    RestAndLeisureLevel(),
    PracticesPhysicalActivity(),
    AverageSleepHours(),
    EatingHabitsClassification(),
  ];

  @override
  Widget build(BuildContext context) {
    viewModel.setPagesLegth(pages.length);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: viewModel.goToPreviousPage,
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: viewModel.pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: viewModel.onPageChanged,
          children: pages,
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: Dimens.mediumPadding),
        child: FloatingActionButton(
          onPressed: viewModel.goToNextPage,
          child: const Icon(Icons.arrow_forward),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(Dimens.extraLargePadding),
        child: Obx(
          () => TweenAnimationBuilder<double>(
            tween: Tween<double>(
              begin: 0,
              end: (viewModel.currentPage.value + 1) / pages.length,
            ),
            duration: const Duration(milliseconds: 600),
            builder: (context, value, child) {
              return LinearProgressIndicator(
                value: value,
              );
            },
          ),
        ),
      ),
    );
  }
}
