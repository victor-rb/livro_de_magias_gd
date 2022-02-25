import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/model/magic_data_model.dart';
import 'package:provider/provider.dart';

import '../widgets/magic_cards.dart';
import 'filter_screen.dart';
import 'name_filter_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MagicData>(builder: (context, magicData, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  FilterByNameModal(context: context);
                },
                icon: Icon(Icons.search))
          ],
          title: Text("Lista de Magias"),
          backgroundColor: Colors.green,
        ),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 15, 8),
              child: Column(
                children: MagicCardList(magicList: magicData.magicData),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.sort_outlined),
          label: Text("Filtro"),
          backgroundColor: Colors.lightGreen,
          onPressed: () => {
            FilterBottomModal(context: context),
          },
        ),
      );
    });
  }
}
