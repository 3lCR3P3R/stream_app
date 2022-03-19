import 'package:flutter/material.dart';

Widget inputBottom(TextEditingController name, void Function() onPressedSend) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: TextFormField(
            controller: name,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Ingresa un nombre',
              labelStyle: TextStyle(fontSize: 20.0),
              hintStyle: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 14.0,
              ),
            ),
            maxLength: 35,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          iconSize: 20.0,
          onPressed: onPressedSend,
        )
      ],
    ),
  );
}
