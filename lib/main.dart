import 'package:flutter/material.dart';
import 'package:flutter_gellary/gellary.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gellary',
      home: Gellary(),
    );
  }
}
