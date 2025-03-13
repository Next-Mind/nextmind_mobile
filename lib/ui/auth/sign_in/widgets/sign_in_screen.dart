import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/sign_in_viewmodel.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/core/themes/theme_controller.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';
import 'package:result_command/result_command.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final viewModel = SignInViewModel.to;

  final _logger = Logger();

  final Map<Command, VoidCallback> _commandListeners = {};

  @override
  void initState() {
    super.initState();
    _registerCommandListener(viewModel.loginWithEmailCommand);
    _registerCommandListener(viewModel.loginWithGoogleCommand);
  }

  void _registerCommandListener(Command command) {
    listener() => _onCommandChanged(command);
    _commandListeners[command] = listener;
    command.addListener(listener);
  }

  @override
  void dispose() {
    _commandListeners.forEach((command, listener) {
      command.removeListener(listener);
    });
    super.dispose();
  }

  void _onCommandChanged(Command command) {
    if (command.isSuccess) {
      _logger.d("Command Success: $command");
    } else if (command.isRunning) {
      Get.toNamed(AppRoutes.loadingScreen);
    } else if (command.isFailure) {
      _logger.d("Command Failure: $command");
      if (Get.currentRoute == AppRoutes.loadingScreen) Get.back();
      final result = command.value as FailureCommand;
      Get.snackbar(
        'Ops!',
        result.error.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
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
                  Obx(() => TextFormField(
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
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.authForgotPassword);
                        },
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
                                ? CircularProgressIndicator(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  )
                                : Text('signIn'.tr),
                          )),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.authSignup);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 48),
                    ),
                    child: Text('signUp'.tr),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.facebook),
                        onPressed: () {
                          viewModel.loginWithFacebookCommand.execute();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.email),
                        onPressed: () {
                          viewModel.loginWithGoogleCommand.execute();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.apple),
                        onPressed: () {
                          viewModel.loginWithAppleCommand.execute();
                        },
                      ),
                      IconButton(
                          onPressed: () => ThemeController.to.toggleThemeMode(),
                          icon: Icon(Icons.brightness_4_outlined))
                    ],
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
