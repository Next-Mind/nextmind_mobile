import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/home/widgets/wave_background/wave_widget.dart';

class WaveBackgroundStacked extends StatelessWidget {
  final double height;

  const WaveBackgroundStacked({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 1.1,
      child: Stack(
        children: [
          WaveBackground(
              height: height * 1.1,
              color: Color(0xFF4FCB53).withValues(alpha: 1)),
          WaveBackgroundOne(
              height: height * 1.05,
              color: Color(0xFF3CA668).withValues(alpha: 0.5)),
          WaveBackgroundSecond(
              height: height, color: Color(0xFF00AC2F).withValues(alpha: 0.5)),
        ],
      ),
    );
  }
}
