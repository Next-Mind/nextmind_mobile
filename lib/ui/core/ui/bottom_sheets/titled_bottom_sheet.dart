import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

class TitledBottomSheet extends StatelessWidget {
  final String title;
  final Widget customWidget;

  const TitledBottomSheet(
      {super.key, required this.title, required this.customWidget});

  @override
  Widget build(BuildContext context) {
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
                      const EdgeInsets.symmetric(vertical: Dimens.smallPadding),
                  child: Icon(Icons.drag_handle_rounded,
                      size: 30,
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceContainerHighest),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Dimens.mediumPadding),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Expanded(child: customWidget),
          ],
        );
      },
    );
  }
}
