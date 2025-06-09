import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/form_builder/viewmodels/form_viewmodel.dart';
import 'package:nextmind_mobile/ui/form_builder/widgets/question_field.dart';

class ProgressiveTheme extends StatelessWidget {
  final FormViewModel viewModel;
  final String formPath;

  const ProgressiveTheme({
    super.key,
    required this.viewModel,
    required this.formPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Obx(
          () {
            return viewModel.formData.value != null
                ? IconButton(
                    onPressed: () => viewModel.isFirstQuestion
                        ? Get.back()
                        : viewModel.goToPreviousQuestion(),
                    icon: Icon(Icons.arrow_back))
                : SizedBox();
          },
        ),
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

        return SafeArea(
          bottom: true,
          child: Column(
            children: [
              Expanded(
                child: Form(
                  key: viewModel.formKey,
                  child: PageView(
                    controller: viewModel.pageController,
                    physics: NeverScrollableScrollPhysics(),
                    onPageChanged: (index) =>
                        viewModel.currentQuestionIndex.value = index,
                    children:
                        viewModel.formData.value!.questions.map((question) {
                      return Padding(
                        padding: EdgeInsets.all(Dimens.extraLargePadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              question.title.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              height: Dimens.extraLargePadding,
                            ),
                            Obx(
                              () => Container(
                                key: ValueKey(
                                    'question_container_${viewModel.currentQuestionIndex.value}'),
                                child: QuestionField(
                                  question: question,
                                  viewModel: viewModel,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimens.smallPadding,
                            ),
                            Obx(
                              () => Text(
                                'hintQuestion'.trParams(
                                  {
                                    'index':
                                        '${viewModel.currentQuestionIndex.value + 1}',
                                    'total':
                                        '${viewModel.formData.value!.questions.length}'
                                  },
                                ),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceContainerHighest,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  // child: PageView.builder(
                  //   controller: viewModel.pageController,
                  //   physics: NeverScrollableScrollPhysics(),
                  //   itemCount: viewModel.formData.value!.questions.length,
                  //   onPageChanged: (index) =>
                  //       viewModel.currentQuestionIndex.value = index,
                  //   itemBuilder: (context, index) => Padding(
                  //     padding: EdgeInsets.all(Dimens.extraLargePadding),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Obx(() => Text(
                  //               viewModel.currentQuestion.title.tr,
                  //               style: Theme.of(context)
                  //                   .textTheme
                  //                   .headlineLarge!
                  //                   .copyWith(
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //             )),

                  //         SizedBox(height: Dimens.extraLargePadding),

                  //         // Use an Obx to refresh the question field when current index changes
                  //         Obx(() => Container(
                  //               key: ValueKey(
                  //                   'question_container_${viewModel.currentQuestionIndex.value}'),
                  //               child: QuestionField(
                  //                 question: viewModel.currentQuestion,
                  //                 viewModel: viewModel,
                  //               ),
                  //             )),

                  //         SizedBox(height: Dimens.smallPadding),

                  //         Obx(() => Text(
                  //               'hintQuestion'.trParams(
                  //                 {
                  //                   'index':
                  //                       '${viewModel.currentQuestionIndex.value + 1}',
                  //                   'total':
                  //                       '${viewModel.formData.value!.questions.length}'
                  //                 },
                  //               ),
                  //               style: TextStyle(color: Colors.grey),
                  //             )),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        );
      }),
      floatingActionButton: Obx(() => viewModel.formData.value != null
          ? Padding(
              padding: const EdgeInsets.only(right: Dimens.mediumPadding),
              child: FloatingActionButton(
                onPressed: viewModel.goToNextQuestion,
                child: Icon(
                  viewModel.isLastQuestion
                      ? Icons.send_outlined
                      : Icons.arrow_forward,
                ),
              ),
            )
          : SizedBox()),
      bottomNavigationBar: Obx(
        () => Padding(
          padding: EdgeInsets.all(Dimens.extraLargePadding),
          child: viewModel.formData.value != null
              ? TweenAnimationBuilder<double>(
                  tween: Tween<double>(
                    begin: 0,
                    end: (viewModel.currentQuestionIndex.value + 1) /
                        viewModel.formData.value!.questions.length,
                  ),
                  duration: const Duration(milliseconds: 600),
                  builder: (context, value, child) {
                    return LinearProgressIndicator(
                      value: value,
                    );
                  },
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
