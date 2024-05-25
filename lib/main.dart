import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'color_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ColorStore colorStore = ColorStore();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('project_ten'),
        ),
        // когда состояние backgroundColor изменяется, Observer перерисовывает виджет Container с новым цветом фона
        body: Observer(
          builder: (_) => Container(
            color: colorStore.backgroundColor,
            child: Center(
              child: ElevatedButton(
                onPressed: colorStore.changeColor,
                child: const Text('изменить цвет'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
