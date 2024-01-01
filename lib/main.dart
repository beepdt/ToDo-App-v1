import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/pages/addPage.dart';
import 'package:todo_app/pages/home.dart';
import 'package:todo_app/theme/themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      home: HomePage(),
      darkTheme: darkMode,
    );
  }
}

