import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/strings/strings.dart';

import '../model/magic_model.dart';

List<Widget> MagicCardList({required List<Magic> magicList}) {
  List<Widget> _cardList = List.empty(growable: true);

  for (Magic magic in magicList) {
    _cardList.add(
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      magic.name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: magic.type == arcana
                              ? Colors.purple
                              : Colors.amber[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Círculo: " + magic.circle.toString(),
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Text(magic.description)),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Alcance : " +
                          magic.range +
                          "\n Duração: " +
                          magic.duration,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  return _cardList;
}
