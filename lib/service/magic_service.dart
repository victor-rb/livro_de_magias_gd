import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:livro_de_magias_gd/model/magic_model.dart';

import '../strings/strings.dart';

class MagicService {
  Future<List<Magic>> getAllMagics() async {
    List<Magic> _magicList = List.empty(
      growable: true,
    );

    Client client = Client();

    Response response = await client.get(
      Uri.https(baseURL, apiAllMagics),
    );

    if (response.statusCode == 200) {
      var _decodedData = jsonDecode(response.body);
      for (String type in defaultTypes) {
        for (var magic in _decodedData[type]) {
          _magicList.add(
            Magic(
              type: type,
              id: int.parse(magic['id']),
              name: magic['nome'],
              circle: int.parse(magic['circulo']),
              range: magic['alcance'],
              duration: magic['duração'],
              description: magic['descrição'],
            ),
          );
        }
      }
    } else {
      throw const HttpException(httpMagicRequestError);
    }

    client.close();

    return _magicList;
  }
}
