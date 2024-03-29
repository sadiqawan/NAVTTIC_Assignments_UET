import 'package:flutter/material.dart';
import 'package:nattic_assignments/screens/buttons.dart';
import 'package:nattic_assignments/screens/first_assignment.dart';
import 'package:nattic_assignments/screens/login_screen.dart';
import 'package:nattic_assignments/screens/secend_assignment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}


