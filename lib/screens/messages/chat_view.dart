import 'package:chatapp/constants.dart';
import 'package:chatapp/models/ChatMessage.dart';
import 'package:chatapp/screens/messages/message.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        itemCount: demeChatMessages.length,
        itemBuilder: (context, index) => Message(
          message: demeChatMessages[index],
        ),
      ),
    );
  }
}
