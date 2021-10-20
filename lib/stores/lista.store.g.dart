// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaStore on _ListaStore, Store {
  final _$listasAtom = Atom(name: '_ListaStore.listas');

  @override
  ObservableList<ListaModel> get listas {
    _$listasAtom.reportRead();
    return super.listas;
  }

  @override
  set listas(ObservableList<ListaModel> value) {
    _$listasAtom.reportWrite(value, super.listas, () {
      super.listas = value;
    });
  }

  final _$_ListaStoreActionController = ActionController(name: '_ListaStore');

  @override
  void add(ListaModel lista) {
    final _$actionInfo =
        _$_ListaStoreActionController.startAction(name: '_ListaStore.add');
    try {
      return super.add(lista);
    } finally {
      _$_ListaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listas: ${listas}
    ''';
  }
}
