import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/strings/strings.dart';
import 'package:provider/provider.dart';

import '../model/magic_data_model.dart';

Future<void> FilterBottomModal({required BuildContext context}) {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.white.withOpacity(0),
    builder: (BuildContext context) {
      return Consumer<MagicData>(
        builder: (context, magicData, child) {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                      onPressed: () {
                        magicData.filterReset();
                        magicData.sortMagic();
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.settings_backup_restore),
                    ),
                    IconButton(
                      onPressed: () {
                        magicData.sortMagic();
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.check),
                    )
                  ],
                  backgroundColor: Colors.green,
                  title: Text("Filtro"),
                  centerTitle: true,
                  bottom: TabBar(
                    padding: EdgeInsets.all(10),
                    tabs: [
                      Text(
                        "Tipo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Circulo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Ordem",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.green.withOpacity(0.1),
                      child: Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  labelArcana,
                                  style: TextStyle(fontSize: 20),
                                ),
                                value: magicData.arcanaFilter,
                                onChanged: (value) {
                                  magicData.setArcanaFilter(value!);
                                },
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  labelDivina,
                                  style: TextStyle(fontSize: 20),
                                ),
                                value: magicData.divinaFilter,
                                onChanged: (value) {
                                  magicData.setDivinaFilter(value!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.green.withOpacity(0.1),
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle1,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle1Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(1, value!);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle2,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle2Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(2, value!);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle3,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle3Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(3, value!);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle4,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle4Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(4, value!);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle5,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle5Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(5, value!);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle6,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle6Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(6, value!);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle7,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle7Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(7, value!);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: CheckboxListTile(
                                    title: Text(
                                      labelCircle8,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    value: magicData.circle8Filter,
                                    onChanged: (value) {
                                      magicData.setCircleFilter(8, value!);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 115.0, right: 115.0),
                              child: CheckboxListTile(
                                title: Text(
                                  labelCircle9,
                                  style: TextStyle(fontSize: 20),
                                ),
                                value: magicData.circle9Filter,
                                onChanged: (value) {
                                  magicData.setCircleFilter(9, value!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.green.withOpacity(0.1),
                      child: Padding(
                        padding: EdgeInsets.all(50.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  sortLabelAlphabetical,
                                  style: TextStyle(fontSize: 20),
                                ),
                                value: !magicData.sortCircle,
                                onChanged: (value) {
                                  magicData.setSortCircle(!value!);
                                },
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  sortLabelCircle,
                                  style: TextStyle(fontSize: 20),
                                ),
                                value: magicData.sortCircle,
                                onChanged: (value) {
                                  magicData.setSortCircle(value!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
