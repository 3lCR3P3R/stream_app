import 'package:flutter/material.dart';
import 'package:observador/src/pages/home_page.dart';
import 'package:observador/src/pages/lista_page.dart';
import 'package:observador/src/pages/stream_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'lista': (BuildContext context) => ListPage(),
    'stream': (BuildContext context) => StreamPage(),
  };
}
