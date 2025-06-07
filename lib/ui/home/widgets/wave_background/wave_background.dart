import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/home/widgets/wave_background/wave_widget.dart';

class WaveBackgroundStacked extends StatelessWidget {
  const WaveBackgroundStacked({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final totalHeight = constraints.maxHeight;
      return Stack(
        children: [
          WaveBackground(
              height: totalHeight,
              color: Color(0xFF4FCB53).withValues(alpha: 1)),
          WaveBackgroundOne(
              height: totalHeight * 0.96,
              color: Color(0xFF3CA668).withValues(alpha: 0.5)),
          WaveBackgroundSecond(
              height: totalHeight * 0.9,
              color: Color(0xFF00AC2F).withValues(alpha: 0.5)),
        ],
      );
    });
  }
}
