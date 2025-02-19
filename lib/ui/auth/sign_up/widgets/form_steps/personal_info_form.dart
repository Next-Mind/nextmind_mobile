import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/personal_info_form_viewmodel.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

class PersonalInfoForm extends StatelessWidget {
  const PersonalInfoForm({super.key});

  Future<void> _selectDate(BuildContext context) async {
    final viewModel = PersonalInfoFormViewModel.to;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      viewModel.birthdayController.text = picked.toString();
      viewModel.credentials.setBirthday(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = PersonalInfoFormViewModel.to;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: viewModel.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: Dimens.largePadding * 2),
                  Image.asset('assets/images/nextmind/logotipo_branco.png'),
                  SizedBox(height: Dimens.extraLargePadding * 2),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: viewModel.nameController,
                    validator: viewModel.validator
                        .byField(viewModel.credentials, 'name'),
                    onChanged: viewModel.credentials.setName,
                    decoration: InputDecoration(
                      hintText: 'fieldHintTextName'.tr,
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(height: Dimens.largePadding),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: viewModel.birthdayController,
                    validator: viewModel.validator
                        .byField(viewModel.credentials, 'birthday'),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today_outlined),
                      hintText: 'fieldHintTextBirthday'.tr,
                    ),
                    onTap: () => _selectDate(context),
                    readOnly: true,
                  ),
                  SizedBox(height: Dimens.largePadding),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: viewModel.emailController,
                    validator: viewModel.validator
                        .byField(viewModel.credentials, 'email'),
                    onChanged: viewModel.credentials.setEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'fieldHintTextEmail'.tr,
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: Dimens.largePadding),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: viewModel.raController,
                    validator: viewModel.validator
                        .byField(viewModel.credentials, 'ra'),
                    onChanged: viewModel.credentials.setRa,
                    decoration: InputDecoration(
                      hintText: 'fieldHintTextRa'.tr,
                      prefixIcon: Icon(Icons.format_list_numbered_outlined),
                    ),
                  ),
                  SizedBox(height: Dimens.largePadding),
                  Obx(
                    () => TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: viewModel.passwordController,
                      onChanged: viewModel.credentials.setPassword,
                      validator: viewModel.validator
                          .byField(viewModel.credentials, 'password'),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'fieldHintTextPassword'.tr,
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(viewModel.passwordVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: viewModel.togglePasswordVisibility,
                        ),
                      ),
                      obscureText: !viewModel.passwordVisible.value,
                    ),
                  ),
                  SizedBox(height: Dimens.largePadding),
                  ElevatedButton(
                    onPressed: SignUpViewModel.to.goToNextPage,
                    child: Text('signUp'.tr),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
