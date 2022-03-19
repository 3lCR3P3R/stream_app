import 'package:flutter/material.dart';
import 'package:observador/src/widgets/input_bottom.dart';
import 'package:observador/src/widgets/lista_nombres.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> _namesList = [];
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Nombres'),
      ),
      body: GestureDetector(
        child: Column(
          children: [
            listaNombres(_namesList),
            inputBottom(_name, _onPressedSend),
          ],
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }

  void _onPressedSend() {
    if (_name.text != "") {
      setState(() {
        _namesList.add(_name.text);
        _name.text = "";
      });
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text(
            'Debe de ingresar un nombre',
          ),
        ),
      );
    }
  }
}
