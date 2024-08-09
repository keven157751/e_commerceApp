import 'package:flutter/material.dart';
import 'package:flutterapp/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 46, 3, 87)),
          useMaterial3: true,
          fontFamily: 'OpenSans'),
      home: const Login(),
      // home: const MyHomePage(title: 'Meu App'),
    );
  }
}
