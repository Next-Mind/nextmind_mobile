import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/form_step_base.dart';
import 'package:nextmind_mobile/ui/core/ui/bottom_sheets/titled_bottom_sheet.dart';

class HasTherapyExperience extends StatelessWidget {
  final SignUpViewModel viewModel = SignUpViewModel.to;
  HasTherapyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return FormStepBase(title: 'formSignUpHasTherapyExperience'.tr, fields: [
      TextFormField(
        validator: viewModel.validator.value
            .byField(viewModel.signUpFormAnswers.value, 'hasTherapyExperience'),
        controller: viewModel.hasTherapyExperienceController,
        onTap: () => Get.bottomSheet(
          backgroundColor: Colors.white,
          isScrollControlled: true,
          TitledBottomSheet(
            title: 'Testezitooos'.tr,
            customWidget: _therapyExperienceList(context),
          ),
        ),
        decoration: InputDecoration(
          hintText: 'fieldSignUpHasTherapyExperienceHint'.tr,
          suffixIcon: Icon(Icons.arrow_drop_down),
        ),
      ),
    ]);
  }

  Widget _therapyExperienceList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: viewModel.therapyExperience.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(viewModel.therapyExperience[index]),
          onTap: () {
            viewModel.setHasTherapyExperience(index);
            Get.back();
          },
        );
      },
    );
  }
}
