import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeccondScreen extends StatelessWidget {
  const SeccondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
    );
  }

}