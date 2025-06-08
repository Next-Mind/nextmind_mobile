import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';
import 'package:nextmind_mobile/ui/home/widgets/dynamic_box/view_models/dynamic_box_viewmodel.dart';
import 'package:nextmind_mobile/utils/extensions/dimens_extension.dart';

class DynamicBox extends StatelessWidget {
  const DynamicBox({super.key});

  final List<IconData> icons = const [
    FontAwesomeIcons.solidFaceSadCry,
    FontAwesomeIcons.solidFaceSadTear,
    FontAwesomeIcons.solidFaceMeh,
    FontAwesomeIcons.solidFaceSmile,
    FontAwesomeIcons.solidFaceGrinSquint,
  ];

  final List<Color> colors = const [
    Colors.red,
    Colors.deepOrange,
    Colors.orange,
    Colors.lightGreen,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    final viewModel = DynamicBoxViewmodel.to;

    return Column(
      children: [
        Row(
          children: [
            Obx(
              () => Text(
                viewModel.dynamicBoxTitle.value.toString().tr,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: Dimens.mediumPadding),
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.dimens.iconSize),
            color: Theme.of(context).colorScheme.surfaceContainer,
            border: Border.all(
              color:
                  Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
              width: context.dimens.cardElevation,
            ),
            boxShadow: [
              BoxShadow(
                color:
                    Theme.of(context).colorScheme.shadow.withValues(alpha: 0.2),
                blurRadius: 2,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Obx(() {
            final selected = viewModel.happinessSelected.value;
            final registered = viewModel.isRegistered.value;

            if (registered) {
              return Center(
                child: Text(
                  'Você já respondeu hoje!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              );
            }

            return Stack(
              alignment: Alignment.center,
              children: [
                // Emojis (fade out when selected)
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 900),
                  opacity: selected == -1 ? 1 : 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(5, (index) {
                      return Hero(
                        tag: 'emoji-$index',
                        child: GestureDetector(
                          onTap: () => viewModel.selectHappiness(index),
                          child: FaIcon(
                            icons[index],
                            size: 38,
                            color: colors[index],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                // Emoji animado para o centro + mensagem
                if (selected != -1)
                  Hero(
                    tag: 'emoji-$selected',
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(
                          icons[selected],
                          size: 60,
                          color: colors[selected],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Registrado!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
