import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:get/get.dart';
//canva site 
//https://www.canva.com/design/DAFsKFWnrOI/WDduDV-PSPEzuxMEzjasuQ/edit
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
   return const GetMaterialApp(
    debugShowCheckedModeBanner: false,
  home: Home(),
);
  }
}




