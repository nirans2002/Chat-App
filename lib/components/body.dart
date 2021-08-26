import 'package:chatapp/components/filled_outline_button.dart';
import 'package:chatapp/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Messages",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
