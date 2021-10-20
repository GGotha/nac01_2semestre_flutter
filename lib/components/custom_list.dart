import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final listas;
  int index;

  CustomList({
    Key key,
    @required this.listas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.house_sharp,
            color: Colors.blue,
          ),
          title: Text(
            '${listas.titulo}',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            '${listas.detalhe}',
            style: TextStyle(color: Colors.grey[800]),
          ),
        ),
      ],
    );
  }
}
