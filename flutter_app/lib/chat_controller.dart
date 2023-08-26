

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChatController extends GetxController{
    RxBool is_welcome_screen=true.obs;
    RxString latestAnswer="".obs;
    RxString connectionState="not_connected".obs;//
    RxString micState="off".obs;//
    RxString questionState="writing".obs;//
  TextEditingController ques_txt_controller=TextEditingController(text: "hello");
  void toggleRecordStatus(){
    is_welcome_screen.value=false;
    if (micState.value=="on") {
      micState.value="off";
    } else {
      micState.value="on";
    }
    debugPrint("mic status ${micState.value}");
}

  void try_connect(){
        is_welcome_screen.value=false;
   connectionState.value="connected";
}
 void send_question(){
   debugPrint("question sended ${ques_txt_controller.text}");
   
}

}