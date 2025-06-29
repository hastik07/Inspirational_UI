import 'package:flutter/material.dart';
import 'package:inspirational_app/components/linear_gradient.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: GradientContainer(
          opacityValue1: .8,
          opacityValue2: .1,
          stopsGradientValue1: 0.1,
          stopsGradientValue2: 0.9,
        ),
      ),
    );
  }
}
