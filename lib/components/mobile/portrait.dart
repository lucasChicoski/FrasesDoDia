import 'package:flutter/material.dart';

import '../../break_points.dart';

class Portrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Image.asset(imagemBooks, width: 300),
          ElevatedButton(
            onPressed: () {},
            child: Text("Gerar sua Mensagem"),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffe78aa5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
                width: 400,
                child: Card(
                  elevation: 15,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("asdasdads"),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
