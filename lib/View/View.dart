import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Controller/Controller.dart';

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
          ],
        ),
      ),
    ));
  }
}
