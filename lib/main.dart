import 'package:flutter/material.dart';
import 'package:inspishare/screens/auth.dart';
import 'package:inspishare/screens/entercode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InspiShare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"
          // primarySwatch: Colors.black,
          ),
      home: const AuthScreen(),
      routes: {"/enterCode": (_) => const CodeScreen()},
    );
  }
}
