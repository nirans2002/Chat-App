import 'package:chatapp/screens/messages/chat_input_field.dart';
import 'package:chatapp/screens/messages/chat_view.dart';
import 'package:flutter/material.dart';

class MsgBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatView(),
        ChatInputField(),
      ],
    );
  }
}
