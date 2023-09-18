

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  TextEditingController namacontroller=TextEditingController();

// RxString nama = RxString('');
// void ChangeName(String nm){
//   nama.value=nm;
//   print(nama.value);
//   // Get.snackbar(
//   //   'nilai', nama.value,
//   //   snackPosition: SnackPosition.BOTTOM,
//   // duration: Duration(seconds: 3)
//   // );

// }
RxBool isOpen = RxBool(true);

Rx<int> num = Rx<int>(0);

void plus(){
  num.value++;

}
void menus(){
  num.value--;
}

String nama = "";
void ChangeValue(String nm){
  nama = nm;
  update();

}

void setIsOpen(bool Open){
  isOpen(Open);
}
}

//void ChangeName(String)

