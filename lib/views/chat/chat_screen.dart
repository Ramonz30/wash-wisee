import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../common/constant/color_helper.dart';
// import '../../common/widgets/CustomTextWidget.dart';
import '../../constants/custom_text_widget.dart';
import 'controller/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatController = Get.put(ChatController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const CustomTextWidget(
          text: 'Chat',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: List.generate(
                  chatController.chatData.length,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  chatController.chatData[index]['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextWidget(
                                    text: chatController.chatData[index]
                                        ['name']),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  chatController.chatData[index]['subtitle'],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade300),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:
                                      1, // Maximum number of lines for wrapping
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomTextWidget(
                            text: "29 Apr 2023",
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
