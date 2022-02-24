import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/model/magic_data_model.dart';
import 'package:livro_de_magias_gd/screens/home_screen.dart';
import 'package:livro_de_magias_gd/strings/strings.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<MagicData>(context);
    return EasySplashScreen(
      backgroundColor: Colors.indigo,
      logo: Image.asset(
        "assets/images/book_logo.png",
      ),
      logoSize: 100,
      loaderColor: Colors.white,
      durationInSeconds: 3,
      navigator: HomeScreen(),
      title: Text(
        splashScreenTitle,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: "MagicHat",
          shadows: <Shadow>[
            Shadow(
              blurRadius: 3.0,
              color: Colors.black,
              offset: Offset(10.0, 10.0),
            )
          ],
        ),
      ),
    );
  }
}
