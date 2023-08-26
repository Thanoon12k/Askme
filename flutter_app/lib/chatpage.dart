import 'package:flutter/material.dart';
import 'package:flutter_app/buttons.dart';
import 'package:flutter_app/chat_controller.dart';
import 'package:flutter_app/widgets.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChatController controller = Get.put(ChatController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/chat_background.PNG'),
            fit: BoxFit.cover,
          ),
        ),
        child: Obx(() {
          return Column(
            children: [

              // User input area.
              Padding(
                padding: const EdgeInsets.fromLTRB(10,30,10,10),
                child: QuestionArea(
                  question_text_controller: controller.ques_txt_controller,
                ),
              ),
              
              if (controller.connectionState == "connected") ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
                  children: [
                    if (controller.micState.value == "off")
                      DarkMicIconButton(
                          onPressed: () => controller.toggleRecordStatus()),
                    if (controller.micState.value == "on")
                      RecordIconButton(
                          onPressed: () => controller.toggleRecordStatus()),
                          const SizedBox(width: 30,),
                    if (controller.ques_txt_controller.text.isNotEmpty)
                      SendIconButton(onPressed: () => controller.send_question()),
                  ],
                ),
              ],

              // Display the most recent answer.
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: controller.connectionState == "connected"
                      ? const AnswerArea(answer: "waiting question ......")
                      : Center(child:NotConnectedButton(onPressed: () => controller.connectionState.value="connected",)),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class WelcomeQuestions extends StatelessWidget {
  const WelcomeQuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        QuestionRow(questionText: "اقترح لي هدية مناسبة لعيد ميلاد امي ؟"),
        SizedBox(height: 20),
        QuestionRow(questionText: "طريقة اعداد البقلاوة العراقية ؟"),
        SizedBox(height: 20),
        QuestionRow(questionText: "اكتب لي معادلة ايجاد قطر الدائرة ؟"),
      ],
    );
  }
}
