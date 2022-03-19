import 'dart:async';

import 'package:flutter/material.dart';
import 'package:observador/src/streams/name_stream.dart';
import 'package:observador/src/widgets/input_bottom.dart';
import 'package:observador/src/widgets/stream_builder.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  final TextEditingController _name = TextEditingController();
  List<String> _namesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream de Nombres'),
      ),
      body: GestureDetector(
        child: Column(
          children: [
            nameStreamBuilder(),
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
      _namesList.add(_name.text);
      nameStream.sink.add(_namesList);
      _name.text = "";
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
