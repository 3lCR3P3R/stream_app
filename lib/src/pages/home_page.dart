import 'package:flutter/material.dart';
import 'package:observador/src/utils/icono_string_util.dart';
import 'package:observador/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  final Icon arrowRigth = const Icon(
    Icons.keyboard_arrow_right,
    color: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Observador'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('builder\n ${snapshot.data}');

        return ListView(
          children: _listaItems(context, snapshot.data ?? []),
        );
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: arrowRigth,
        onTap: () {
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });

    return opciones;
  }
}
