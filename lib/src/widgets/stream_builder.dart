import 'package:flutter/material.dart';
import 'package:observador/src/widgets/lista_nombres.dart';
import 'package:observador/src/streams/name_stream.dart';

Widget nameStreamBuilder() {
  return StreamBuilder<List<String>>(
    stream: nameStream.stream,
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      return snapshot.hasData
          ? listaNombres(snapshot.data)
          : Expanded(
              child: ListView.builder(
                itemCount: 0,
                itemBuilder: (BuildContext context, int index) => Container(),
              ),
            );
    },
  );
}
