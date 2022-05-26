import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solar/principal_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: {
        // ignore: prefer_const_constructors
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): ActivateIntent(),
        // ignore: prefer_const_constructors
        LogicalKeySet(LogicalKeyboardKey.arrowRight): ActivateIntent(),
        // ignore: prefer_const_constructors
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PrincipalPage(),
      ),
    );
  }
}
