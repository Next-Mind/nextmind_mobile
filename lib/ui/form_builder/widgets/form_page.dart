import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/form_builder/viewmodels/form_viewmodel.dart';
import 'package:nextmind_mobile/ui/form_builder/widgets/form_themes/default_theme.dart';
import 'package:nextmind_mobile/ui/form_builder/widgets/form_themes/progressive_theme.dart';

class FormScreen extends StatelessWidget {
  final String formPath;
  final String theme;
  final Function(Map<String, dynamic> answers) onSubmit;

  const FormScreen(
      {super.key,
      required this.formPath,
      this.theme = 'Default',
      required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final FormViewModel viewModel = Get.find<FormViewModel>();

    // Load form data when screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.loadForm(formPath);
      viewModel.onSubmit = onSubmit;
    });

    switch (theme) {
      case 'Default':
        return DefaultTheme(viewModel: viewModel, formPath: formPath);
      case 'Progressive':
        return ProgressiveTheme(viewModel: viewModel, formPath: formPath);
      default:
        return DefaultTheme(viewModel: viewModel, formPath: formPath);
    }
  }
}
