import 'package:chatapp/components/filled_outline_button.dart';
import 'package:chatapp/constants.dart';
import 'package:chatapp/models/Chat.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Messages",
              ),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(chat: chatsData[index]),
          ),
        ),
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key key,
    this.chat,
  }) : super(key: key);

  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(chat.image),
          ),
        ],
      ),
    );
  }
}
