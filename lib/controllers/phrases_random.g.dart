// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phrases_random.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PhrasesRandom on PhrasesRandomBase, Store {
  final _$phraseAtom = Atom(name: 'PhrasesRandomBase.phrase');

  @override
  String get phrase {
    _$phraseAtom.reportRead();
    return super.phrase;
  }

  @override
  set phrase(String value) {
    _$phraseAtom.reportWrite(value, super.phrase, () {
      super.phrase = value;
    });
  }

  final _$setPhraseAsyncAction = AsyncAction('PhrasesRandomBase.setPhrase');

  @override
  Future setPhrase() {
    return _$setPhraseAsyncAction.run(() => super.setPhrase());
  }

  @override
  String toString() {
    return '''
phrase: ${phrase}
    ''';
  }
}
