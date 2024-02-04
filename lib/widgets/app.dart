import 'package:flutter/material.dart';

import 'main_profile.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(textTheme: TextTheme(titleLarge: TextStyle )),
      debugShowCheckedModeBanner: false,
      home: MainProfile(),
    );
  }
}