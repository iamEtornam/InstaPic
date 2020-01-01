import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaPic',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(elevation: 0,color: Colors.white,iconTheme: IconThemeData(color:Colors.black)),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}