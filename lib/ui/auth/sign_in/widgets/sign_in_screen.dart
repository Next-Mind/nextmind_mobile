import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/sign_in_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:result_command/result_command.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final viewModel = AuthViewModel.to;

  final _logger = Logger();

  @override
  void initState() {
    super.initState();
    viewModel.loginWithEmailCommand.addListener(_listenable);
  }

  @override
  void dispose() {
    viewModel.loginWithEmailCommand.removeListener(_listenable);
    super.dispose();
  }

  void _listenable() {
    if (viewModel.loginWithEmailCommand.isSuccess) {
      _logger.d("Login success");
    } else if (viewModel.loginWithEmailCommand.isFailure) {
      _logger.d("Login failure");
      final result = viewModel.loginWithEmailCommand.value as FailureCommand;
      Get.snackbar('Ops!', result.error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(height: Dimens.extraLargePadding * 2),
                  Image.asset('assets/images/nextmind/logotipo_branco.png'),
                  SizedBox(height: Dimens.extraLargePadding * 2),
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
                  SizedBox(height: 36),
                  TextFormField(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('forgotPassword'.tr),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  ListenableBuilder(
                      listenable: viewModel.loginWithEmailCommand,
                      builder: (context, _) => ElevatedButton(
                            onPressed: () {
                              if (viewModel.validator
                                  .validate(viewModel.credentials)
                                  .isValid) {
                                viewModel.loginWithEmailCommand.execute();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(200, 48),
                            ),
                            child: viewModel.loginWithEmailCommand.isRunning
                                ? CircularProgressIndicator()
                                : Text('signIn'.tr),
                          )),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 48),
                    ),
                    child: Text('signUp'.tr),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 126,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.facebook, size: 24),
                        Icon(Icons.email, size: 24),
                        Icon(Icons.apple, size: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
