import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'phrases_random.g.dart';

class PhrasesRandom = PhrasesRandomBase with _$PhrasesRandom;

abstract class PhrasesRandomBase with Store {
  PhrasesRandomBase() {
    autorun((_) {
      print(phrase);
    });
  }

  @observable
  String phrase = 'Aperte o botão para gerar uma nova mensagem';

  @action
  setPhrase() async {
    var response = await Dio().get('https://api.adviceslip.com/advice');
    String phrases = response.toString();
    var toJson = json.decode(phrases);
    phrase = toJson['slip']['advice'];
    //print(phrase);
  }
}
