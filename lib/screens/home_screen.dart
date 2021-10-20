import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nac01_2semestre_flutter/components/custom_list.dart';
import 'package:nac01_2semestre_flutter/models/lista_model.dart';
import 'package:nac01_2semestre_flutter/stores/lista.store.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listaStore = ListaStore();

    void incrementList() {
      listaStore.add(
        new ListaModel(
          id: 1,
          titulo: 'Imóvel em São Paulo',
          detalhe: 'Grande custo benefício',
        ),
      );
    }

    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Nac 3 - Flutter"),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 24),
              child: Badge(
                position: BadgePosition.topStart(),
                badgeContent: Text(listaStore.listas.length.toString()),
                badgeColor: Colors.transparent,
                child: Icon(Icons.mobile_friendly),
              ),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
            itemCount: listaStore.listas.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: CustomList(
                  listas: listaStore.listas[index],
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementList,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
