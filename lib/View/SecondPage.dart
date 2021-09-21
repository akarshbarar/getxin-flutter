import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controller/Controller.dart';

class SecondPage extends StatelessWidget {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("${controller.counter}"),
          ),
          MaterialButton(
              child: Text("Go to First Page"),
              onPressed: () {
                Get.back();
              })
        ],
      ),
    ));
  }
}
