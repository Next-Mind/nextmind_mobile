import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/appointment/widgets/appointment_screen.dart';
import 'package:nextmind_mobile/ui/core/wigdets/custom_menu.dart';
import 'package:nextmind_mobile/ui/home/widgets/home_screen.dart';


class BaseController extends GetxController {
  static BaseController get to => Get.find();
  RxInt currentIndex = 0.obs;
}


class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: BaseController.to.currentIndex.value,
            children: [
              
              appointment_screen()
          
       
         
            ],
          )),
      bottomNavigationBar: Obx(() => CustomMenu(
            currentIndex: BaseController.to.currentIndex.value,
            onTap: (index) => BaseController.to.currentIndex.value = index,
          )),
    );
  }
}
