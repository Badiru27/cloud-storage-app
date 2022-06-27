import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';

class CloudText extends StatelessWidget {

  final String text;
  final TextStyle style;
  final Color color;
  final bool textAlignCenter;

   CloudText.headerOne({required this.text, this.color =kcBlackColor, this.textAlignCenter=true }): style = heading1Style.copyWith(color: color);
   CloudText.headerTwo({required this.text, this.color =kcBlackColor, this.textAlignCenter=true }): style = heading2Style.copyWith(color: color);
   CloudText.headerThree({required this.text, this.color =kcBlackColor, this.textAlignCenter=true }): style = heading3Style.copyWith(color: color);
   CloudText.subHeading({required this.text, this.color =kcBlackColor, this.textAlignCenter=true }): style = subheadingStyle.copyWith(color: color);
   CloudText.headline({required this.text, this.color =kcBlackColor, this.textAlignCenter=true }): style = headlineStyle.copyWith(color: color);
   CloudText.caption({required this.text, this.color =kcBlackColor, this.textAlignCenter=true }): style = captionStyle.copyWith(color: color);
  
  CloudText.body({ Key? key, required this.text, this.color = kcBlackColor, this.textAlignCenter=true}) : style = bodyStyle.copyWith(color: color);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlignCenter? TextAlign.center: TextAlign.start,
    );
  }
}



