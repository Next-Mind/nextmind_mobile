import 'package:flutter/widgets.dart';

class DynamicBox extends StatelessWidget {
  const DynamicBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text('Dynamic Box')),
    );
  }
}
