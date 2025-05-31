import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/home/widgets/wave_background/wave_widget.dart';

class WaveBackgroundStacked extends StatelessWidget {
  const WaveBackgroundStacked({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WaveBackground(
          height: 400,
          color: Colors.green[800]!,
        ),
        WaveBackground(
          height: 380,
          color: Colors.green[600]!,
        ),
        WaveBackground(
          height: 360,
          color: Colors.green[400]!,
        ),
      ],
    );
  }
}
