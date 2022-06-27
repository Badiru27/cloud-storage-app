import 'package:flutter/cupertino.dart';
import 'package:response/response.dart';

double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;
final response = ResponseUI.instance;
// Vertical Spacing
final verticalSpaceTiny = SizedBox(height: response.setHeight(5),);
final verticalSpaceSmall = SizedBox(height: response.setHeight(15));
final verticalSpaceMedium = SizedBox(height: response.setHeight(18));
final verticalSpaceLarge = SizedBox(height: response.setHeight(30));
final verticalSpaceExtraLarge = SizedBox(height: response.setHeight(69));
final verticalSpaceFairlyLarge = SizedBox(height: response.setHeight(100));
final verticalSpaceVeryLarge = SizedBox(height: response.setHeight(150));
final verticalSpaceExtremelyLarge = SizedBox(height: response.setHeight(200));

// horizontal Spacing
final horizontalSpaceTiny = SizedBox(width: response.setHeight(5));
final horizontalSpaceSmall = SizedBox(width: response.setHeight(15));
final horizontalSpaceMedium = SizedBox(width: response.setHeight(18));
final horizontalSpaceLarge = SizedBox(width: response.setHeight(30));
final horizontalSpaceExtraLarge = SizedBox(width: response.setHeight(69));