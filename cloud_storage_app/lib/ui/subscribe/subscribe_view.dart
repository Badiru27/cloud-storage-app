import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_storage_app/ui/shared/widgets/text_with_icon.dart';
import 'package:cloud_storage_app/ui/subscribe/subcribe_viewmodel.dart';
import 'package:cloud_ui/cloud_ui.dart';
import 'package:cloud_ui/shared/cloudtext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class SubscribeView extends StatelessWidget {
  const SubscribeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SubscribeViewModel>.reactive(
        viewModelBuilder: () => SubscribeViewModel(),
        builder: (context, model, child) => SafeArea(
                child: Scaffold(
              floatingActionButton: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 30, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CloudButton(
                        enable: true,
                        buttonColor: kcPrimaryColor,
                        textColor: Colors.white,
                        title: subscribetionNow,
                        onTap: () {
                          model.navigateToNextScreen();
                        },
                      ),
                      verticalSpaceSmall,
                      CloudText.body(text: subscribetionAsk)
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    verticalSpaceSmall,
                      CloudText.headerTwo(text: subscribetionGet),
                      verticalSpaceTiny,
                      CloudText.headerTwo(
                        text: subscribetionNow,
                        color: kcPrimaryColor,
                      ),
                      verticalSpaceLarge,
                      const Image(image: AssetImage(subcribeImage)),
                      verticalSpaceLarge,
                      CloudText.headerTwo(text: subscribetionUpgrade),
                      verticalSpaceMedium,
                      ListView.builder(
                          itemCount: offers.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Center(
                                child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextIcon(
                                  text: offers[index],
                                  icon: FontAwesomeIcons.checkCircle),
                            ));
                          }),
                          verticalSpaceExtremelyLarge,
                    ],
                  ),
                ),
              ),
            )));
  }
}
