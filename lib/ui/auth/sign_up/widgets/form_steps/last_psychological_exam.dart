import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

class LastPsychologicalExam extends StatelessWidget {
  const LastPsychologicalExam({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel viewModel = SignUpViewModel.to;
    return Padding(
      padding: EdgeInsets.all(Dimens.extraLargePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'formSignUpLastPsychologicalExam'.tr,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: Dimens.extraLargePadding),
          TextFormField(
            validator: viewModel.validator.value.byField(
                viewModel.signUpFormAnswers.value, 'lastPsychologicalExam'),
            onChanged:
                viewModel.signUpFormAnswers.value.setLastPsychologicalExam,
            decoration: InputDecoration(
              hintText: 'Grade',
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
        ],
      ),
    );
  }
}
