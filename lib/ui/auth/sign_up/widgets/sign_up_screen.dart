import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nextmind_mobile/ui/auth/sign_up/view_models/sign_up_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/core/ui/input_formatters/data_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  Future<void> _selectDate(BuildContext context) async {
    final viewModel = SignUpViewModel.to;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year - 13),
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year - 13, 12, 31),
    );
    if (picked != null) {
      String formattedDate = DateFormat('dd/MM/yyyy').format(picked);
      viewModel.birthdayController.text = formattedDate;
      viewModel.signUpFormAnswers.value.setBirthday(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = SignUpViewModel.to;
    return Scaffold(
      body: SingleChildScrollView(
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
                  validator: viewModel.validator.value
                      .byField(viewModel.signUpFormAnswers.value, 'name'),
                  onChanged: viewModel.setName,
                  decoration: InputDecoration(
                    hintText: 'fieldHintTextName'.tr,
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(height: Dimens.largePadding),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: viewModel.birthdayController,
                  inputFormatters: [DateTextInputFormatter()],
                  onChanged: viewModel.setBirthday,
                  validator: viewModel.validator.value
                      .byField(viewModel.signUpFormAnswers.value, 'birthday'),
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () => _selectDate(context),
                        icon: Icon(Icons.calendar_today_outlined)),
                    hintText: 'fieldHintTextBirthday'.tr,
                  ),
                ),
                SizedBox(height: Dimens.largePadding),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: viewModel.emailController,
                  validator: viewModel.validator.value
                      .byField(viewModel.signUpFormAnswers.value, 'email'),
                  onChanged: viewModel.setEmail,
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
                  validator: viewModel.validator.value
                      .byField(viewModel.signUpFormAnswers.value, 'ra'),
                  onChanged: viewModel.setRa,
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
                    onChanged: viewModel.setPassword,
                    validator: viewModel.validator.value
                        .byField(viewModel.signUpFormAnswers.value, 'password'),
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
                Obx(() => ElevatedButton(
                      onPressed: viewModel.isFormValid.value
                          ? () => viewModel.submitForm()
                          : null,
                      style: !viewModel.isFormValid.value
                          ? ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll<Color>(
                                  Theme.of(context).colorScheme.inversePrimary))
                          : null,
                      child: Text('signUp'.tr),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
