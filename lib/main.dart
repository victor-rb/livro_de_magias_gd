import 'package:flutter/material.dart';
import 'package:livro_de_magias_gd/model/magic_data_model.dart';
import 'package:livro_de_magias_gd/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MagicData(),
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
