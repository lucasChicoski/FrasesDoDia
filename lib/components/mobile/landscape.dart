import 'package:flutter/material.dart';

import '../../break_points.dart';

class LandScapeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Visibility(
        visible: constraints.maxWidth <= 900,
        child: Align(
          alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            imagemBooks,
                            width: 250,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              primary: Color(0xffe78aa5),
                            ),
                            onPressed: () {},
                            child: Text('Apertar aqui'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      //color: Colors.red,
                      child: Card(
                        elevation: 15,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                              "asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd"),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        replacement: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                'assets/img1.png',
                width: 300,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffe78aa5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: Text("Gerar mensagem"),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 150,
                child: Card(
                  elevation: 15,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: 350,
                      child: SingleChildScrollView(
                          child: Text(
                              "asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd")),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
