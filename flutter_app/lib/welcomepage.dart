import 'package:flutter/material.dart';
import 'package:flutter_app/buttons.dart';
import 'package:flutter_app/chatpage.dart';
import 'package:flutter_app/widgets.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
      double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/blue_background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
   
 Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
 SizedBox(height: screenHeight*0.1),
 TitleText(text:"👏👏",size: 20, width: FontWeight.w100,right: screenWidth*0.8),
 TitleText(text:"_______",size: 20, width: FontWeight.w100,right: screenWidth*0.7),
 TitleText(text:"مرحبا بك",size: 42, width: FontWeight.w400,right: screenWidth*0.35),
 TitleText(text:"_________",size: 16, width: FontWeight.w100,right: screenWidth*0.7),
 const SizedBox(height: 40),
 TitleText(text:"استمتع بوقتك معي",size: 36, width: FontWeight.w300,right: screenWidth*0.2),
SizedBox(height: screenHeight*0.4),
Center(child: GradientStyledButton(onPressed: ()=>Get.to(()=>const ChatPage()), text: "هيا لنبدأ")) 
 
 ],),

    
 
 
 
        ],
      ),
    );
  }
}

