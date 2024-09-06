import 'package:flutter/material.dart';
import 'package:untitled/rigister.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => RegistrationScreen()
    },
  ));
}
