import 'package:flutter/material.dart';
import 'package:frasesdodia/components/mobile/landscape.dart';
import 'package:frasesdodia/components/mobile/portrait.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Portrait();
        } else {
          return LandScapeMobile();
        }
      },
    );
  }
}
