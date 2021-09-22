import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controller/Controller.dart';
import 'package:getxproject/View/SecondPage.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${controller.counter}",
                  style: TextStyle(fontSize: 30),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Icon(Icons.remove))
              ],
            ),
            MaterialButton(
                child: Text("Go to Second Page"),
                onPressed: () {
                  Get.toNamed('/second');
                }),
            MaterialButton(
                child: Text("Open Snakbar"),
                onPressed: () {
                  Get.snackbar("GetX", "Hello World!");
                }),
            MaterialButton(
                child: Text("Flutter Snakbar"),
                onPressed: () {
                  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
            MaterialButton(
                child: Text("Open Dialog Box"),
                onPressed: () {
                  Get.defaultDialog(title: "Hello world !", middleText: "Hii");
                }),
            MaterialButton(
                child: Text("Dark Theme"),
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                }),
          ],
        ),
      ),
    ));
  }
}
