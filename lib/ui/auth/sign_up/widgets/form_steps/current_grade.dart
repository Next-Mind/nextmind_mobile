import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

class CurrentGrade extends StatelessWidget {
  const CurrentGrade({super.key});

  @override
  Widget build(BuildContext context) {
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
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return DraggableScrollableSheet(
                  expand: false,
                  builder: (context, scrollController) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Icon(Icons.drag_handle_rounded,
                                  size: 30, color: Colors.grey[400]),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(Dimens.mediumPadding),
                          child: Text(
                            "Escolha a série",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            controller: scrollController,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text('${index + 1}º ano'),
                                onTap: () {
                                  Get.back();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
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
}

// Widget currentGradePage() {
//   SignUpViewModel viewModel = SignUpViewModel.to;

//   return Padding(
//     padding: EdgeInsets.all(Dimens.largePadding),
//     child: Column(
//       children: [
//         Text(
//           'What is your current grade?',
//         ),
//         SizedBox(height: Dimens.mediumPadding),
//         TextFormField(
//           decoration: InputDecoration(
//             hintText: 'Grade',
//           ),
//         ),
//         SizedBox(height: Dimens.mediumPadding),
//         Align(
//           alignment: Alignment.bottomRight,
//           child: IconButton(
//             icon: const Icon(Icons.arrow_forward),
//             onPressed: viewModel.goToNextPage,
//           ),
//         ),
//       ],
//     ),
//   );
// }
