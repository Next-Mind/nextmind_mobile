import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/form_step_base.dart';
import 'package:nextmind_mobile/ui/core/ui/bottom_sheets/titled_bottom_sheet.dart';

class CurrentGrade extends StatelessWidget {
  const CurrentGrade({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel viewmodel = SignUpViewModel.to;
    return FormStepBase(title: 'formSignUpCurrentGrade'.tr, fields: [
      TextFormField(
        readOnly: true,
        controller: viewmodel.currentGradeController,
        onTap: () => Get.bottomSheet(
          backgroundColor: Colors.white,
          isScrollControlled: true,
          TitledBottomSheet(
            title: 'formSignUpChooseGrade'.tr,
            customWidget: _gradeList(context),
          ),
        ),
        validator: viewmodel.validator.value
            .byField(viewmodel.signUpFormAnswers.value, 'currentGrade'),
        decoration: InputDecoration(
          hintText: 'formSignUpCurrentGradeHint'.tr,
          suffixIcon: Icon(Icons.arrow_drop_down),
        ),
      ),
    ]);
  }

  Widget _gradeList(BuildContext context) {
    SignUpViewModel viewmodel = SignUpViewModel.to;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: viewmodel.grades.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(viewmodel.grades[index]),
          onTap: () {
            viewmodel.setCurrentGrade(index);
            Get.back();
          },
        );
      },
    );
  }
}
