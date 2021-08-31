import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frasesdodia/controllers/phrases_random.dart';
import 'package:get_it/get_it.dart';

import '../../break_points.dart';

class LandScapeMobile extends StatelessWidget {
  PhrasesRandom phrasesRandom = GetIt.I<PhrasesRandom>();

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
                Observer(builder: (_) {
                  return Row(
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
                              onPressed: phrasesRandom.setPhrase,
                              child: Text('Apertar aqui'),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 300,
                          //color: Colors.red,
                          child: Card(
                            elevation: 15,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(phrasesRandom.phrase),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                })
              ],
            ),
          ),
        ),
        replacement: Align(
            alignment: Alignment.center,
            child: Observer(builder: (_) {
              return Column(
                children: [
                  Image.asset(
                    'assets/img1.png',
                    width: 300, // tamanho da imagem
                  ),
                  ElevatedButton(
                    //botão
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffe78aa5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: phrasesRandom.setPhrase,
                    child: Text("Gerar mensagem"),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 100,
                      child: Card(
                        elevation: 15,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            width: 350,
                            child: SingleChildScrollView(
                                child: Text(
                              phrasesRandom.phrase,
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            })),
      );
    });
  }
}
