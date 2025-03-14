import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/form_builder/question.dart';
import 'package:nextmind_mobile/ui/core/ui/bottom_sheets/titled_bottom_sheet.dart';
import 'package:nextmind_mobile/ui/form_builder/viewmodels/form_viewmodel.dart';

class QuestionField extends StatelessWidget {
  final Question question;
  final FormViewModel viewModel;

  const QuestionField({
    super.key,
    required this.question,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    switch (question.fieldType) {
      case 'text':
        return _buildTextField();
      case 'number':
        return _buildNumberField();
      case 'email':
        return _buildEmailField();
      case 'dropdown':
        return _buildDropdownField();
      case 'radio':
        return _buildRadioField();
      case 'checkbox':
        return _buildCheckboxField();
      case 'date':
        return _buildDateField();
      case 'bottomSheet':
        return _buildBottomSheetField();
      default:
        return _buildTextField();
    }
  }

  Widget _buildTextField() {
    // Use Obx to properly observe changes to the specific question's answer
    return Obx(() => TextFormField(
          initialValue: viewModel.answers[question.id]?.toString() ?? '',
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          decoration: InputDecoration(
            labelText: question.title.tr,
            hintText: question.placeholder?.tr,
            helperText: question.helperText?.tr,
          ),
          validator: (value) => viewModel.validateAnswer(question, value),
          onChanged: (value) => viewModel.updateAnswer(question.id, value),
        ));
  }

  Widget _buildNumberField() {
    return Obx(() => TextFormField(
          initialValue: viewModel.answers[question.id]?.toString() ?? '',
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          decoration: InputDecoration(
            labelText: question.title.tr,
            hintText: question.placeholder?.tr,
            helperText: question.helperText?.tr,
          ),
          keyboardType: TextInputType.number,
          validator: (value) => viewModel.validateAnswer(question, value),
          onChanged: (value) => viewModel.updateAnswer(question.id, value),
        ));
  }

  Widget _buildEmailField() {
    return Obx(() => TextFormField(
          initialValue: viewModel.answers[question.id]?.toString() ?? '',
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          decoration: InputDecoration(
            labelText: question.title.tr,
            hintText: question.placeholder?.tr,
            helperText: question.helperText?.tr,
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) => viewModel.validateAnswer(question, value),
          onChanged: (value) => viewModel.updateAnswer(question.id, value),
        ));
  }

  Widget _buildDropdownField() {
    if (question.options == null || question.options!.isEmpty) {
      return Text('No options provided for dropdown');
    }

    return Obx(() => DropdownButtonFormField<String>(
          value: viewModel.answers[question.id],
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          decoration: InputDecoration(
            labelText: question.title.tr,
            helperText: question.helperText?.tr,
          ),
          items: question.options!.map((option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option.tr),
            );
          }).toList(),
          validator: (value) => viewModel.validateAnswer(question, value),
          onChanged: (value) {
            viewModel.updateAnswer(question.id, value);
          },
        ));
  }

  Widget _buildRadioField() {
    if (question.options == null || question.options!.isEmpty) {
      return Text('No options provided for radio buttons');
    }

    return Obx(() => FormField<String>(
          initialValue: viewModel.answers[question.id],
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          validator: (value) => viewModel.validateAnswer(question, value),
          builder: (FormFieldState<String> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.title.tr,
                  style: TextStyle(fontSize: 16),
                ),
                ...question.options!.map((option) {
                  return RadioListTile<String>(
                    title: Text(option.tr),
                    value: option,
                    groupValue: viewModel.answers[question.id],
                    onChanged: (value) {
                      viewModel.updateAnswer(question.id, value);
                    },
                  );
                }),
                if (state.hasError)
                  Text(
                    state.errorText!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                if (question.helperText != null)
                  Text(
                    question.helperText!,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
              ],
            );
          },
        ));
  }

  Widget _buildCheckboxField() {
    if (question.options == null || question.options!.isEmpty) {
      return Text('No options provided for checkboxes');
    }

    // Initialize list if it doesn't exist
    if (viewModel.answers[question.id] == null) {
      viewModel.updateAnswer(question.id, <String>[]);
    }

    return Obx(() => FormField<List<String>>(
          initialValue: viewModel.answers[question.id] ?? <String>[],
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          validator: (value) => viewModel.validateAnswer(question, value),
          builder: (FormFieldState<List<String>> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.title.tr,
                  style: TextStyle(fontSize: 16),
                ),
                ...question.options!.map((option) {
                  return CheckboxListTile(
                    title: Text(option),
                    value: (viewModel.answers[question.id] as List<String>?)
                            ?.contains(option) ??
                        false,
                    onChanged: (bool? value) {
                      final List<String> selectedOptions = List<String>.from(
                          viewModel.answers[question.id] ?? <String>[]);

                      if (value == true) {
                        selectedOptions.add(option);
                      } else {
                        selectedOptions.remove(option);
                      }

                      viewModel.updateAnswer(question.id, selectedOptions);
                    },
                  );
                }),
                if (state.hasError)
                  Text(
                    state.errorText!,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                if (question.helperText != null)
                  Text(
                    question.helperText!,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
              ],
            );
          },
        ));
  }

  Widget _buildDateField() {
    return Obx(() => FormField<DateTime>(
          initialValue: viewModel.answers[question.id],
          key: ValueKey(
              '${question.id}_${viewModel.currentQuestionIndex.value}'),
          validator: (value) =>
              viewModel.validateAnswer(question, value?.toString()),
          builder: (FormFieldState<DateTime> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_today_outlined),
                  ),
                  controller: TextEditingController(
                    text: viewModel.answers[question.id] != null
                        ? '${(viewModel.answers[question.id] as DateTime).day.toString().padLeft(2, '0')}/${(viewModel.answers[question.id] as DateTime).month.toString().padLeft(2, '0')}/${(viewModel.answers[question.id] as DateTime).year}'
                        : question.placeholder?.tr ?? 'Select date',
                  ),
                  readOnly: true,
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: Get.context!,
                      initialDate: viewModel.answers[question.id] ??
                          DateTime(DateTime.now().year - 13),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(DateTime.now().year - 13, 12, 31),
                    );

                    if (picked != null) {
                      viewModel.updateAnswer(question.id, picked);
                      state.didChange(picked);
                    }
                  },
                ),
                if (state.hasError)
                  Text(
                    state.errorText!.tr,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                if (question.helperText != null)
                  Text(
                    question.helperText!.tr,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
              ],
            );
          },
        ));
  }

  Widget _buildBottomSheetField() {
    if (question.options == null || question.options!.isEmpty) {
      return Text('No options provided for this question');
    }

    return Obx(() {
      final answer = viewModel.answers[question.id]?.toString().tr ?? '';

      return TextFormField(
        key: ValueKey('${question.id}_${viewModel.currentQuestionIndex.value}'),
        controller: TextEditingController(text: answer),
        onTap: () => Get.bottomSheet(
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          isScrollControlled: true,
          _buildBottomSheetModal(),
        ),
        validator: (value) => viewModel.validateAnswer(question, value),
        decoration: InputDecoration(
            hintText: question.placeholder?.tr,
            suffixIcon: Icon(Icons.arrow_drop_down)),
        readOnly: true,
      );
    });
  }

  Widget _buildBottomSheetModal() {
    return TitledBottomSheet(
      title: question.title.tr,
      customWidget: _buildBottomSheetList(),
    );
  }

  Widget _buildBottomSheetList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: question.options!.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(question.options![index].tr),
          onTap: () {
            viewModel.updateAnswer(question.id, question.options![index]);
            Get.back();
          },
        );
      },
    );
  }
}
