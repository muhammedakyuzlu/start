// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BuildHomeViewModel on _BuildHomeViewModelBase, Store {
  late final _$countAtom =
      Atom(name: '_BuildHomeViewModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$_BuildHomeViewModelBaseActionController =
      ActionController(name: '_BuildHomeViewModelBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_BuildHomeViewModelBaseActionController.startAction(
        name: '_BuildHomeViewModelBase.increment');
    try {
      return super.increment();
    } finally {
      _$_BuildHomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}

mixin _$Counter on CounterBase, Store {
  late final _$valueAtom = Atom(name: 'CounterBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$CounterBaseActionController =
      ActionController(name: 'CounterBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.increment');
    try {
      return super.increment();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
