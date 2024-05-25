import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

// строчка, которая показывает, что сгенерированный код будет находиться в этом файле
part 'color_store.g.dart';

// класс ColorStore, который объединяет код из _ColorStore и сгенерированный код MobX
class ColorStore = _ColorStore with _$ColorStore;

abstract class _ColorStore with Store {
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];

  @observable
  Color backgroundColor = Colors.white;

  @action
  void changeColor() {
    // определение следующего цвета в списке
    int currentIndex = _colors.indexOf(backgroundColor);
    int nextIndex = (currentIndex + 1) % _colors.length;
    backgroundColor = _colors[nextIndex];
  }
}
