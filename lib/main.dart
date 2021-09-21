import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/View/SecondPage.dart';
import 'package:getxproject/View/View.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    home: View(),
    getPages: [
      GetPage(name: '/', page: () => View()),
      GetPage(name: '/second', page: () => SecondPage())
    ],
  ));
}
