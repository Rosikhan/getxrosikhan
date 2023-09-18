import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihandialog/Home_controller.dart';
import 'package:latihandialog/Second_screen.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('getx'),
        actions: [
          IconButton(
            onPressed: (){
              Get.bottomSheet(Container(
                width: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: (){
                        Get.toNamed('/index');
                      }, 
                      child: Text('index hasil')),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: (){
                        Get.toNamed('/list');
                      }, 
                      child: Text('list hasil')),
                  ],
                ),
              ));
            }, 
            icon: Icon(Icons.settings)
            )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            TextField(

            controller: hc.namacontroller,
            decoration: InputDecoration(
              labelText: 'input nama'
            ),
      onSubmitted: (value){
            hc.ChangeValue(hc.namacontroller.text);
            
            // Get.defaultDialog(
            //   title: "Nama yang di input",
            //   middleText: hc.namacontroller.text, onConfirm: (){
            //     Get.to(SeccondScreen(),arguments:hc.namacontroller.text );
            //   }
            // );
      },
            ),
            SizedBox(
              height: 25,
            ),
            GetBuilder<HomeController>(builder: (hc) {
              return Text(hc.nama);
            }),

            Row(
              children: [
                Obx(() => Text(hc.isOpen.value ? "open" : "closed",
                style: TextStyle(
                  color: hc.isOpen.value 
                  ? Colors.green
                  : Colors.red
                ),
                )),
                
                
                
                Obx(() => Switch(
                  value: hc.isOpen.value,
                  activeColor: Colors.green,
                  onChanged: (Value){
                  hc.setIsOpen(Value);
                })),
              ],
            )
          ],
        ),
      ),
    );
  }
}