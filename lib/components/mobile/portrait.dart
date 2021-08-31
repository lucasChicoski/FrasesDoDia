import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frasesdodia/controllers/phrases_random.dart';
import 'package:get_it/get_it.dart';

import '../../break_points.dart';

class Portrait extends StatelessWidget {
  PhrasesRandom phrasesRandom = GetIt.I<PhrasesRandom>();
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Observer(builder: (_) {
          return Column(
            children: [
              Image.asset(imagemBooks, width: 300),
              ElevatedButton(
                onPressed: phrasesRandom.setPhrase,
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
                        child: Text(phrasesRandom.phrase),
                      ),
                    )),
              )
            ],
          );
        }));
  }
}
