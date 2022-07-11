import 'package:flutter/material.dart';

import 'components/declarations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Souq',
      theme: ThemeData(
        scaffoldBackgroundColor: Declarations.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: Declarations.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      home: Scaffold(
          appBar: AppBar(title: const Text("My Souq"),),
          body: const
          Center(child: Text('Flutter Demo Home Page'))
      ),
    );
  }
}



