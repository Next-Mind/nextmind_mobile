import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/widgets/form_steps/form_step_base.dart';
import 'package:nextmind_mobile/ui/core/ui/bottom_sheets/titled_bottom_sheet.dart';

class ReasonsForUsingApp extends StatelessWidget {
  final SignUpViewModel viewModel = SignUpViewModel.to;
  ReasonsForUsingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FormStepBase(title: 'formSignUpReasonsForUsingApp'.tr, fields: [
      TextFormField(
        readOnly: true,
        controller: viewModel.reasonsForUsingAppController,
        onTap: () => Get.bottomSheet(
          backgroundColor: Colors.white,
          isScrollControlled: true,
          TitledBottomSheet(
            title: 'formSignUpChooseReason'.tr,
            customWidget: _reasonsList(context),
          ),
        ),
        validator: viewModel.validator.value
            .byField(viewModel.signUpFormAnswers.value, 'reasonsForUsingApp'),
        decoration: InputDecoration(
          hintText: 'formSignUpReasonsForUsingAppHint'.tr,
          suffixIcon: Icon(Icons.arrow_drop_down),
        ),
      ),
    ]);
  }

  Widget _reasonsList(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: viewModel.reasons.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(viewModel.reasons[index]),
          onTap: () {
            viewModel.setReasonsForUsingApp(index);
            Get.back();
          },
        );
      },
    );
  }
}
