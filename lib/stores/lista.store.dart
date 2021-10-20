import 'package:mobx/mobx.dart';
import 'package:nac01_2semestre_flutter/models/lista_model.dart';
part 'lista.store.g.dart';

class ListaStore = _ListaStore with _$ListaStore;

abstract class _ListaStore with Store {
  @observable
  var listas = ObservableList<ListaModel>();

  @action
  void add(ListaModel lista) {
    listas.add(lista);
  }
}
