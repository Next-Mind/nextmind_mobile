import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/home/widgets/dynamic_box/view_models/dynamic_box_viewmodel.dart';
import 'package:nextmind_mobile/utils/extensions/dimens_extension.dart';

class DynamicBox extends StatelessWidget {
  const DynamicBox({super.key});

  @override
  Widget build(BuildContext context) {
    DynamicBoxViewmodel viewModel = DynamicBoxViewmodel.to;
    return Column(
      children: [
        Row(
          children: [
            Text(
              viewModel.dynamicBoxTitle.value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: Dimens.mediumPadding),
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.dimens.iconSize),
              color: Theme.of(context).colorScheme.surfaceContainer,
              border: Border.all(
                color: Theme.of(context)
                    .colorScheme
                    .outline
                    .withValues(alpha: 0.2),
                width: context.dimens.cardElevation,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context)
                      .colorScheme
                      .shadow
                      .withValues(alpha: 0.2),
                  blurRadius: 2,
                  offset: Offset(0, 6),
                ),
              ]),
          child: _buildHappinessWidget(context),
        ),
      ],
    );
  }

  Widget _buildHappinessWidget(context) {
    // Placeholder for the happiness widget
    return Padding(
      padding: const EdgeInsets.all(Dimens.mediumPadding),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sentiment_dissatisfied,
                    size: Dimens.extraLargePadding * 2.5),
                Text('Mal'),
              ],
            )),
          ),
          Expanded(
            child: Center(
                child: Column(
              children: [
                Icon(Icons.sentiment_neutral,
                    size: Dimens.extraLargePadding * 2.5),
                Text('Regular')
              ],
            )),
          ),
          Expanded(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sentiment_satisfied,
                    size: Dimens.extraLargePadding * 2.5),
                Text('Bem'),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
