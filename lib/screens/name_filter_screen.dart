import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/model/magic_data_model.dart';
import 'package:provider/provider.dart';

import '../widgets/seachbar_widget.dart';

Future<void> FilterByNameModal({required BuildContext context}) {
  Provider.of<MagicData>(context, listen: false).filterReset();
  Provider.of<MagicData>(context, listen: false).sortMagic();

  return showDialog(
    context: context,
    builder: (BuildContext) {
      return AlertDialog(
        title: Center(child: Text("Buscar Magia")),
        content: nameSearchBar(context: context),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Resultado"))
        ],
      );
    },
  );
}
