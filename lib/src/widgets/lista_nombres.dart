import 'package:flutter/material.dart';

Widget listaNombres(namesList) {
  return Expanded(
    child: ListView.builder(
      itemCount: namesList.length,
      itemBuilder: (BuildContext context, int index) {
        // return Text(namesList[index]);
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: index % 2 == 0 ? Colors.grey.withOpacity(0.2) : Colors.white,
            // borderRadius: BorderRadius.all(Radius.circular(6)),
            border: Border.all(
              width: 0.5,
              color:
                  index % 2 == 0 ? Colors.grey.withOpacity(0.2) : Colors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  namesList[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 10),
              ),
              Expanded(child: Container()),
              const SizedBox(height: 5)
            ],
          ),
        );
      },
    ),
  );
}
