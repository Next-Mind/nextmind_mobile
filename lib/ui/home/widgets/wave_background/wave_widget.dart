import 'package:flutter/material.dart';

class WaveBackground extends StatelessWidget {
  final double height;
  final Color color;

  const WaveBackground({
    super.key,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: WavePainter(color: color),
    );
  }
}

class WavePainter extends CustomPainter {
  final Color color;

  WavePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();
    path.lineTo(0, size.height * 0.8);

    path.quadraticBezierTo(
        size.width * 0.5, size.height, size.width, size.height * 0.8);

    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
