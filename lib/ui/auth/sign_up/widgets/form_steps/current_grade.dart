import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/core/ui/bottom_sheets/titled_bottom_sheet.dart';

class CurrentGrade extends StatelessWidget {
  const CurrentGrade({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel viewmodel = SignUpViewModel.to;
    return Padding(
      padding: EdgeInsets.all(Dimens.extraLargePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'formSignUpCurrentGrade'.tr,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: Dimens.extraLargePadding),
          TextFormField(
            readOnly: true,
            controller: viewmodel.currentGradeController,
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => TitledBottomSheet(
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
          SizedBox(height: Dimens.mediumPadding),
        ],
      ),
    );
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
