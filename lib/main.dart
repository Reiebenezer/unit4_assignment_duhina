// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:unit4_assignment_duhina/home.dart';
import 'package:unit4_assignment_duhina/utils/theme.dart';
import 'header.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rei Ebenezer Duhina',
      theme: getTheme(),
      home: Scaffold(
        appBar: header(),
        body: const Home()
      ),
    );
  }
}