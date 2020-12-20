import 'package:flutter/material.dart';
import 'package:qr_code_app/page/HomePage.dart';
import 'package:qr_code_app/page/ResultPage.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/home", routes: {
    "/home": (context) => HomePage(),
    "/result": (context) => ResultPage()
  }));
}
