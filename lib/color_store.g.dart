// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ColorStore on _ColorStore, Store {
  late final _$backgroundColorAtom =
      Atom(name: '_ColorStore.backgroundColor', context: context);

  @override
  Color get backgroundColor {
    _$backgroundColorAtom.reportRead();
    return super.backgroundColor;
  }

  @override
  set backgroundColor(Color value) {
    _$backgroundColorAtom.reportWrite(value, super.backgroundColor, () {
      super.backgroundColor = value;
    });
  }

  late final _$_ColorStoreActionController =
      ActionController(name: '_ColorStore', context: context);

  @override
  void changeColor() {
    final _$actionInfo = _$_ColorStoreActionController.startAction(
        name: '_ColorStore.changeColor');
    try {
      return super.changeColor();
    } finally {
      _$_ColorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
backgroundColor: ${backgroundColor}
    ''';
  }
}
