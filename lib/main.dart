import 'package:flutter/material.dart';
import 'package:myapp/pantalla/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frutería App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // Puedes usar fuentes personalizadas si las agregas a tu pubspec
      ),
      home: const WelcomeScreen(),
    );
  }
}
