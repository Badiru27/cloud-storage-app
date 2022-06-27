import 'package:flutter/material.dart';

class RoundCustomeIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final Color backgroundColor;
  const RoundCustomeIcon(
      {Key? key,
      required this.backgroundColor,
      required this.color,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: backgroundColor,
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconData,
            color: color,
            size: 15,
          ),
        ),
      ),
    );
  }
}
