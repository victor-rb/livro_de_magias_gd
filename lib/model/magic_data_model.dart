import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/model/magic_model.dart';
import 'package:livro_de_magias_gd/service/magic_service.dart';
import 'package:livro_de_magias_gd/strings/strings.dart';

class MagicData extends ChangeNotifier {
  List<Magic> magicData = List.empty(growable: true);

  bool arcanaFilter = true;
  bool divinaFilter = true;
  bool circle1Filter = true;
  bool circle2Filter = true;
  bool circle3Filter = true;
  bool circle4Filter = true;
  bool circle5Filter = true;
  bool circle6Filter = true;
  bool circle7Filter = true;
  bool circle8Filter = true;
  bool circle9Filter = true;

  bool sortCircle = false;

  List<String> _typeFilter = List.empty(growable: true);
  List<int> _circleFilter = List.empty(growable: true);

  MagicData() {
    _setMagicData();
    filterReset();
  }

  void _setMagicData() async {
    magicData = (await MagicService().getAllMagics());
  }

  void sortMagic() {
    List<Magic> sortedMagic = List.empty(growable: true);

    _setMagicData();

    for (Magic magic in magicData) {
      if (_typeFilter.contains(magic.type) &&
          _circleFilter.contains(magic.circle)) sortedMagic.add(magic);
    }

    if (sortCircle) {
      sortedMagic.sort(
        (a, b) => a.circle.compareTo(b.circle),
      );
    }

    magicData = sortedMagic;

    notifyListeners();
  }

  void filterByName(String name) {
    List<Magic> sortedMagic = List.empty(growable: true);

    _setMagicData();

    for (Magic magic in magicData) {
      if (magic.name.contains(name)) sortedMagic.add(magic);
    }
    magicData = sortedMagic;
    notifyListeners();
  }

  void setArcanaFilter(bool value) {
    arcanaFilter = value;
    if (arcanaFilter) {
      _typeFilter.add(arcana);
    } else {
      _typeFilter.remove(arcana);
    }
    notifyListeners();
  }

  void setDivinaFilter(bool value) {
    divinaFilter = value;
    if (divinaFilter) {
      _typeFilter.add(divina);
    } else {
      _typeFilter.remove(divina);
    }
    notifyListeners();
  }

  void setCircleFilter(int circleNumber, bool value) {
    switch (circleNumber) {
      case 1:
        circle1Filter = value;
        if (circle1Filter) {
          _circleFilter.add(1);
        } else {
          _circleFilter.remove(1);
        }
        break;
      case 2:
        circle2Filter = value;
        if (circle2Filter) {
          _circleFilter.add(2);
        } else {
          _circleFilter.remove(2);
        }
        break;
      case 3:
        circle3Filter = value;
        if (circle3Filter) {
          _circleFilter.add(3);
        } else {
          _circleFilter.remove(3);
        }
        break;
      case 4:
        circle4Filter = value;
        if (circle4Filter) {
          _circleFilter.add(4);
        } else {
          _circleFilter.remove(4);
        }
        break;
      case 5:
        circle5Filter = value;
        if (circle5Filter) {
          _circleFilter.add(5);
        } else {
          _circleFilter.remove(5);
        }
        break;
      case 6:
        circle6Filter = value;
        if (circle6Filter) {
          _circleFilter.add(6);
        } else {
          _circleFilter.remove(6);
        }
        break;
      case 7:
        circle7Filter = value;
        if (circle7Filter) {
          _circleFilter.add(7);
        } else {
          _circleFilter.remove(7);
        }
        break;
      case 8:
        circle8Filter = value;
        if (circle8Filter) {
          _circleFilter.add(8);
        } else {
          _circleFilter.remove(8);
        }
        break;
      case 9:
        circle9Filter = value;
        if (circle9Filter) {
          _circleFilter.add(9);
        } else {
          _circleFilter.remove(9);
        }
        break;
    }
    notifyListeners();
  }

  void setSortCircle(bool value) {
    sortCircle = value;
    notifyListeners();
  }

  void filterReset() {
    arcanaFilter = true;
    divinaFilter = true;
    circle1Filter = true;
    circle2Filter = true;
    circle3Filter = true;
    circle4Filter = true;
    circle5Filter = true;
    circle6Filter = true;
    circle7Filter = true;
    circle8Filter = true;
    circle9Filter = true;
    sortCircle = false;
    _typeFilter.addAll(defaultTypes);
    _circleFilter.addAll(defaultCircle);
  }
}
