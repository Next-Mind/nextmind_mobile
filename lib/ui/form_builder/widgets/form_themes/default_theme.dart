import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/form_builder/viewmodels/form_viewmodel.dart';
import 'package:nextmind_mobile/ui/form_builder/widgets/question_field.dart';

class DefaultTheme extends StatelessWidget {
  final FormViewModel viewModel;
  final String formPath;

  const DefaultTheme({
    super.key,
    required this.viewModel,
    required this.formPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(viewModel.formData.value?.formTitle ?? 'Form')),
      ),
      body: Obx(() {
        if (viewModel.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (viewModel.hasError.value) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: ${viewModel.errorMessage.value}'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => viewModel.loadForm(formPath),
                  child: Text('Retry'),
                ),
              ],
            ),
          );
        }

        if (viewModel.formData.value == null) {
          return Center(child: Text('No form data available'));
        }

        return Column(
          children: [
            // Progress indicator
            LinearProgressIndicator(
              value: (viewModel.currentQuestionIndex.value + 1) /
                  viewModel.formData.value!.questions.length,
            ),

            // Form description
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                viewModel.formData.value!.formDescription,
                style: TextStyle(fontSize: 16),
              ),
            ),

            // PageView for smooth transitions
            Expanded(
              child: Form(
                key: viewModel.formKey,
                child: PageView.builder(
                  controller: viewModel.pageController,
                  physics:
                      NeverScrollableScrollPhysics(), // Disable manual swiping
                  itemCount: viewModel.formData.value!.questions.length,
                  onPageChanged: (index) {
                    viewModel.currentQuestionIndex.value = index;
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: QuestionField(
                                question:
                                    viewModel.formData.value!.questions[index],
                                viewModel: viewModel,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (index > 0)
                                ElevatedButton(
                                  onPressed: viewModel.goToPreviousQuestion,
                                  child: Text('Previous'),
                                )
                              else
                                SizedBox(),
                              ElevatedButton(
                                onPressed: () {
                                  // Validate the current form field
                                  if (viewModel.validateCurrentQuestion()) {
                                    if (index ==
                                        viewModel.formData.value!.questions
                                                .length -
                                            1) {
                                      viewModel.submitForm();
                                    } else {
                                      viewModel.goToNextQuestion();
                                    }
                                  }
                                },
                                child: Text(
                                  index ==
                                          viewModel.formData.value!.questions
                                                  .length -
                                              1
                                      ? 'Submit'
                                      : 'Next',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'hintQuestion'.trParams(
                              {
                                'index':
                                    '${viewModel.currentQuestionIndex.value + 1}',
                                'total':
                                    '${viewModel.formData.value!.questions.length}'
                              },
                            ),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
