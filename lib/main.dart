import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frasesdodia/screens/frases_do_dia.dart';

main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Frases do Dia",
      home: Scaffold(
        backgroundColor: Color(0xfff5f6be),
        appBar: AppBar(title: Text("Frases do dia"),backgroundColor: Color(0xffa4d3e1),),
        body: FrasesDoDia(),
      ),
    );
  }
}
