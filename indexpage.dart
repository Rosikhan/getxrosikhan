
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home_controller.dart';

class IndexPage extends StatelessWidget {
  const IndexPage ({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController control = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Row(children: [
          IconButton(onPressed: (){
            control.menus();
          }, icon: Icon(Icons.remove)),
          Obx(() => Text(control.num.value.toString())),
          IconButton(onPressed: (){
            control.plus();
          }, icon: Icon(Icons.add)),
        ],),
      ),
    );
  }
}