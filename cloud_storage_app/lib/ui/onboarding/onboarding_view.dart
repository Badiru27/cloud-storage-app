import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:cloud_storage_app/ui/onboarding/onboarding_viemodel.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_storage_app/ui/shared/widgets/round_custome_icon.dart';
import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
        viewModelBuilder: () => OnboardingViewModel(),
        builder: (context, model, child) => SafeArea(
              child: Scaffold(
                  backgroundColor: kcPrimaryColor,
                  body: GestureDetector(
                    onHorizontalDragEnd: (details) {
                      if (details.velocity.pixelsPerSecond.dx < 0) {
                        if (model.currentIndex < 2) {
                          model.updateCurrentIndex((model.currentIndex) + 1);
                        }
                      } else {
                        if (model.currentIndex != 0) {
                          model.updateCurrentIndex((model.currentIndex) - 1);
                        }
                      }
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(image: AssetImage(model.images)),
                            verticalSpaceExtraLarge,
                            CloudText.headerThree(
                              text: model.header,
                              color: kcWhiteColor,
                            ),
                            verticalSpaceTiny,
                            CloudText.body(
                              text: model.bodies,
                              color: kcWhiteColor,
                            ),
                            verticalSpaceLarge,
                            Container(
                              height: response.setHeight(10),
                              alignment: Alignment.center,
                              width: response.setWidth(100),
                              child: ListView.builder(
                                itemCount: 3,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Container(
                                    height: index == model.currentIndex? 20:10,
                                    width: index == model.currentIndex? 20:10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:kcWhiteColor 
                                          
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            verticalSpaceLarge,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                CloudButton(
                                    title: google,
                                    leftIcon: false,
                                    buttonWidth: 150,
                                    onTap: () {
                                      model.navigateToNextScreen();
                                    },
                                    enable: false,
                                    leading: const RoundCustomeIcon(
                                        backgroundColor: kcRedColor,
                                        color: kcWhiteColor,
                                        iconData: FontAwesomeIcons.google)),
                                CloudButton(
                                    title: facebook,
                                    buttonWidth: 150,
                                    leftIcon: false,
                                    onTap: () {
                                      model.navigateToNextScreen();
                                    },
                                    enable: false,
                                    leading: const RoundCustomeIcon(
                                        backgroundColor: kcPrimaryColor,
                                        color: kcWhiteColor,
                                        iconData: FontAwesomeIcons.facebook)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ));
  }
}

// class IntroductionView extends StatelessWidget {
//   IntroductionView({Key? key}) : super(key: key);
//   final response = ResponseUI.instance;

//   @override
//   Widget build(BuildContext context) {
//     double cHeight = MediaQuery.of(context).size.height;
//     return ViewModelBuilder<IntroductionViewModel>.reactive(
//         viewModelBuilder: () => IntroductionViewModel(),
//         builder: (context, model, child) => Scaffold(
//               body: GestureDetector(
//                 onHorizontalDragEnd: (details) {
//                   if (details.velocity.pixelsPerSecond.dx < 0) {
//                     if (model.currentIndex < 3) {
//                       model.updateCurrentIndex((model.currentIndex) + 1);
//                     }
//                   } else {
//                     if (model.currentIndex != 0) {
//                       model.updateCurrentIndex((model.currentIndex) - 1);
//                     }
//                   }
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                       // color:  kcOverlayColor,
//                       image: DecorationImage(
//                     image: AssetImage(model.backgroundImage),
//                     // colorFilter: ColorFilter.mode(kcOverlayColor.withOpacity(0.3), BlendMode.dstATop),
//                     fit: BoxFit.cover,
//                   )),
//                   child: Column(
//                     children: [
//                       model.currentIndex == 0
//                           ? SizedBox(
//                               height: cHeight * 0.2,
//                             )
//                           : SizedBox(
//                               height: cHeight * 0.1,
//                             ),
//                       Image.asset(model.images),
//                       verticalSpaceSmall,
//                       model.currentIndex == 0
//                           ? Container()
//                           : Text(
//                               model.header,
//                               style: kcWhiteHeader,
//                             ),
//                       verticalSpaceTiny,
//                       Text(
//                         model.subHeader,
//                         style: kcWhiteSubHeader,
//                       ),
//                       SizedBox(
//                         height: cHeight * 0.2,
//                       ),
//                       model.currentIndex == 0
//                           ? Column(
//                               children: [
//                                 Text(introductionInstructionText,
//                                     style: kcWhiteTinyText),
//                                 verticalSpaceMedium
//                               ],
//                             )
//                           : Container(),
//                       verticalSpaceLarge,
//                       Container(
//                         height: response.setHeight(10),
//                         alignment: Alignment.center,
//                         width: response.setWidth(80),
//                         child: ListView.builder(
//                           itemCount: 4,
//                           shrinkWrap: true,
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (context, index) => Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 5.0),
//                             child: Container(
//                               height: 10,
//                               width: 10,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: index == model.currentIndex
//                                     ? Colors.white
//                                     : Colors.black26,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       verticalSpaceLarge,
//                       verticalSpaceSmall,
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
//                         child: MeuveButton(
//                           title: introductionButtonText,
//                           buttonColor: Colors.white,
//                           textColor: kcPrimaryColor,
//                           onTap: () {
//                             model.navigateToOnBoarding();
//                           },
//                         ),
//                       ),
//                       SizedBox(
//                         height: cHeight * 0.05,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(introductionBottomText, style: kcWhiteBodyText),
//                           GestureDetector(
//                               onTap: model.navigateToLogin,
//                               child: Text(introductionSignInText,
//                                   style: kcWhiteBodyBold))
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ));
//   }
// }
