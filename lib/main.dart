import 'package:flutter/material.dart';

import 'package:answers/src/palette/palette.dart';
import 'package:answers/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Answers App',
      theme: ThemeData(
        primarySwatch: Palette.ktoDark,
      ),
      initialRoute: 'startPage',
      routes: getAplicationsRoutes(),
    );
  }
}
