// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked))
          .value;
  Computed<List<ItemModel>> _$listFilteredComputed;

  @override
  List<ItemModel> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<ItemModel>>(() => super.listFiltered))
      .value;

  final _$meusTodosAtom = Atom(name: '_HomeControllerBase.meusTodos');

  @override
  ObservableList<ItemModel> get meusTodos {
    _$meusTodosAtom.context.enforceReadPolicy(_$meusTodosAtom);
    _$meusTodosAtom.reportObserved();
    return super.meusTodos;
  }

  @override
  set meusTodos(ObservableList<ItemModel> value) {
    _$meusTodosAtom.context.conditionallyRunInAction(() {
      super.meusTodos = value;
      _$meusTodosAtom.reportChanged();
    }, _$meusTodosAtom, name: '${_$meusTodosAtom.name}_set');
  }

  final _$filtroAtom = Atom(name: '_HomeControllerBase.filtro');

  @override
  String get filtro {
    _$filtroAtom.context.enforceReadPolicy(_$filtroAtom);
    _$filtroAtom.reportObserved();
    return super.filtro;
  }

  @override
  set filtro(String value) {
    _$filtroAtom.context.conditionallyRunInAction(() {
      super.filtro = value;
      _$filtroAtom.reportChanged();
    }, _$filtroAtom, name: '${_$filtroAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setFiltro(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setFiltro(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addTodo(ItemModel item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.addTodo(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTodo(ItemModel itemToRemove) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.removeTodo(itemToRemove);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'meusTodos: ${meusTodos.toString()},filtro: ${filtro.toString()},totalChecked: ${totalChecked.toString()},listFiltered: ${listFiltered.toString()}';
    return '{$string}';
  }
}
