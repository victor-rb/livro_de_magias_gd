import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:livro_de_magias_gd/model/magic_data_model.dart';
import 'package:provider/provider.dart';

Widget nameSearchBar({required BuildContext context}) {
  TextEditingController _textController = TextEditingController();

  return Consumer<MagicData>(
    builder: (context, magicData, child) {
      return TypeAheadFormField(
        hideOnEmpty: true,
        hideOnError: true,
        textFieldConfiguration: TextFieldConfiguration(
            controller: _textController,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(labelText: 'Nome da Magia')),
        suggestionsCallback: (name) {
          return magicData.filterByName(name);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(title: Text(suggestion.toString()));
        },
        onSuggestionSelected: (suggestion) {
          _textController.text = suggestion.toString();
          magicData.filterByName(suggestion.toString());
        },
        errorBuilder: (context, error) {
          return ListTile(
            title: Text("Magia não encontrada"),
          );
        },
      );
    },
  );
}
