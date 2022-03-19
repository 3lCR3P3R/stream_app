import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "accessibility": Icons.accessibility,
  "add_alert": Icons.add_alert,
  "donut_large": Icons.donut_large,
  "folder_open": Icons.folder_open,
  "input": Icons.input,
  "list": Icons.list,
  "tune": Icons.tune,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.blue);
}
