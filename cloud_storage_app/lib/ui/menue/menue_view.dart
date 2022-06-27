import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:cloud_storage_app/ui/menue/menue_viewmodel.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_storage_app/ui/shared/widgets/text_button.dart';
import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MenueView extends StatelessWidget {
  const MenueView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cHeight = MediaQuery.of(context).size.height * 0.13;

    return ViewModelBuilder<MenueViewModel>.reactive(
      viewModelBuilder: () => MenueViewModel(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Container(
          color: kcWhiteColor,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceLarge,
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: kcWhiteColor,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: kcLightGreyColor,
                              spreadRadius: 10,
                              blurRadius: 5,
                            ),
                          ]),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        child: CloudText.body(text: 'x'),
                      ),
                    ),
                  ),
                ),
                verticalSpaceMedium,
                Container(
                  height: cHeight,
                  decoration: BoxDecoration(
                    color: kcPrimaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              profileImage,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CloudText.headerThree(
                                          text: menueName,
                                          color: kcWhiteColor,
                                        ),
                                        verticalSpaceTiny,
                                        CloudText.caption(
                                          text: menueLocation,
                                          color: kcWhiteColor,
                                        ),
                                      ],
                                    ),
                                    CloudTextButton(
                                      texColor: kcWhiteColor,
                                      text: 'Pro',
                                      color: kcYellowColor,
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CloudText.caption(
                                      text: menueStorage,
                                      color: kcWhiteColor,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CloudText.caption(
                                          text: menueGB,
                                          color: kcWhiteColor,
                                        ),
                                        verticalSpaceTiny,
                                        const SizedBox(
                                          width: 120,
                                          child: LinearProgressIndicator(
                                            value: 0.3,
                                            backgroundColor: kcLightGreyColor,
                                            color: kcYellowColor,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                   height: response.setHeight(450),
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: menueption.keys.toList().length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: menueption.keys.toList()[index] == 'My Drive'? model.navigateToNextScreen: null,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      menueption.values.toList()[index],
                                      size: 25,
                                      color: kcGreyColor,
                                    ),
                                    horizontalSpaceMedium,
                                    CloudText.subHeading(
                                      text: menueption.keys.toList()[index],
                                      color: kcGreyColor,
                                    ),
                                  ],
                                ),
                                if (menueption.keys.toList()[index] == 'My Drive')
                                  CloudTextButton(
                                    onTap: () {},
                                    color: kcLightGreyColor,
                                    text: '+ New',
                                    texColor: kcBlackColor,
                                  ),
                                if (menueption.keys.toList()[index] == 'Backup')
                                  CloudText.body(
                                    text: menueLast,
                                    color: kcGreyColor,
                                  )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CloudText.subHeading(
                      text: menueVersion,
                      color: kcGreyColor,
                    ),
                    CloudText.subHeading(
                      text: menueLogout,
                      color: kcGreyColor,
                    )
                  ],
                ),
                verticalSpaceExtraLarge
              ],
            ),
          ),
        ),
      ),
    );
  }
}
