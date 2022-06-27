import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_ui/shared/cloudtext.dart';
import 'package:cloud_ui/shared/colors.dart';
import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  const TextIcon(
      {Key? key,
      required this.text,
      required this.icon,
      this.iconColor = kcPrimaryColor,
      this.textColor = kcBlackColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
        horizontalSpaceTiny,
        CloudText.body(text: text, color: textColor,)
      ],
    );
  }
}
