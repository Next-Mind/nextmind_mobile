import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

class AverageSleepHours extends StatelessWidget {
  const AverageSleepHours({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel viewModel = SignUpViewModel.to;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Dimens.extraLargePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'formSignUpAverageHoursOfSleep'.tr,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: Dimens.extraLargePadding),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Grade',
              ),
            ),
            SizedBox(height: Dimens.mediumPadding),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.goToNextPage,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
