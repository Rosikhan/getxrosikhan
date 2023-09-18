import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihandialog/Home_screen.dart';
import 'indexpage.dart';
import 'listpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page:() => MainApp()), 
        GetPage(name: "/index", page: ()=> IndexPage()),
        GetPage(name: "/list", page: ()=> ListPage())
        ],
      home: Home_screen(), 
    ); // GetMaterialApp 

  }
}
