import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';

class CloudButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color textColor;
  final Widget? leading;
  final bool enable;
  final Function() onTap;
  final bool leftIcon;
  final double? buttonWidth;

  const CloudButton(
      {required this.title,
      required this.onTap,
      this.buttonColor = kcLightGreyColor,
      this.textColor = kcGreyColor,
      this.enable = false,
      this.leading,
      this.leftIcon = true,
      this.buttonWidth,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: buttonWidth?? double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: leftIcon
            ? BoxDecoration(
                color: enable ? kcPrimaryColor : kcLightGreyColor,
                borderRadius: BorderRadius.circular(10))
            : BoxDecoration(
                color: kcWhiteColor, borderRadius: BorderRadius.circular(10)),
        child: leftIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leading != null) leading!,
                  if (leading != null)
                    const SizedBox(
                      width: 10,
                    ),
                  Text(
                    title,
                    style: enable
                        ? bodyStyle.copyWith(color: kcWhiteColor)
                        : bodyStyle.copyWith(color: kcGreyColor),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: enable
                        ? bodyStyle.copyWith(color: kcWhiteColor)
                        : bodyStyle.copyWith(color: kcGreyColor),
                  ),
                  if (leading != null)
                    const SizedBox(
                      width: 10,
                    ),
                  if (leading != null) leading!,
                ],
              ),
      ),
    );
  }
}
