// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemModel on _ItemModelBase, Store {
  final _$contentAtom = Atom(name: '_ItemModelBase.content');

  @override
  String get content {
    _$contentAtom.context.enforceReadPolicy(_$contentAtom);
    _$contentAtom.reportObserved();
    return super.content;
  }

  @override
  set content(String value) {
    _$contentAtom.context.conditionallyRunInAction(() {
      super.content = value;
      _$contentAtom.reportChanged();
    }, _$contentAtom, name: '${_$contentAtom.name}_set');
  }

  final _$checkAtom = Atom(name: '_ItemModelBase.check');

  @override
  bool get check {
    _$checkAtom.context.enforceReadPolicy(_$checkAtom);
    _$checkAtom.reportObserved();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.context.conditionallyRunInAction(() {
      super.check = value;
      _$checkAtom.reportChanged();
    }, _$checkAtom, name: '${_$checkAtom.name}_set');
  }

  final _$_ItemModelBaseActionController =
      ActionController(name: '_ItemModelBase');

  @override
  dynamic setContent(String value) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction();
    try {
      return super.setContent(value);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction();
    try {
      return super.setCheck(value);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'content: ${content.toString()},check: ${check.toString()}';
    return '{$string}';
  }
}
