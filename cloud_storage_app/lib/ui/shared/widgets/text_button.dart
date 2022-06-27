import 'package:cloud_ui/shared/cloudtext.dart';
import 'package:cloud_ui/shared/colors.dart';
import 'package:flutter/material.dart';

class CloudTextButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color color;
  final Color texColor;
  const CloudTextButton(
      {Key? key, required this.onTap, required this.color, required this.text, required this.texColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: CloudText.caption(
              text: text,
              color: texColor,
            ),
          )),
    );
  }
}
