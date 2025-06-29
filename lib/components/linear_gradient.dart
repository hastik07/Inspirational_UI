import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.opacityValue1,
    required this.opacityValue2,
    required this.stopsGradientValue1,
    required this.stopsGradientValue2,
    this.child,
  });

  final double opacityValue1;
  final double opacityValue2;
  final double stopsGradientValue1;
  final double stopsGradientValue2;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(opacityValue1),
            Colors.black.withOpacity(opacityValue2),
          ],
          begin: Alignment.bottomRight,
          stops: [stopsGradientValue1, stopsGradientValue2],
        ),
      ),
      child: child,
    );
  }
}
