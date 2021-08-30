import 'package:flutter/material.dart';
import 'package:frasesdodia/components/mobile/mobile.dart';

class FrasesDoDia extends StatefulWidget {
  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxHeight);
      return Mobile();
    });
  }
}
