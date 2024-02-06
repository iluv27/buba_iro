import 'package:buba_iro/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'Components/bottomAppBar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightMode,
      darkTheme: darkMode,
      home: const BottomNavigator(),
    );
  }
}
