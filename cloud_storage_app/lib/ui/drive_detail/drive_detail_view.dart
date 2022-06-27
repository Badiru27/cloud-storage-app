import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:cloud_storage_app/ui/drive_detail/drive_detail_viewmodel.dart';
import 'package:cloud_storage_app/ui/drive_detail/widgets/custome_file_card.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_ui/shared/cloudtext.dart';
import 'package:cloud_ui/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class DriveDetailsView extends StatelessWidget {
  const DriveDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ViewModelBuilder<DriveDetailViewModel>.reactive(
        viewModelBuilder: () => DriveDetailViewModel(),
        onModelReady: (model) => model.getFolderAndFile(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: kcWhiteColor,
                elevation: 0.0,
                toolbarHeight: 60,
                systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
                  statusBarColor: kcWhiteColor,
                  statusBarBrightness: Brightness.light,
                  statusBarIconBrightness: Brightness.dark,
                ),
                title: CloudText.headerTwo(text: driveDetailsTitle, color: kcBlackColor,),
                leading: Builder(
                    builder: (context) => Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 10),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: response.setHeight(39),
                                width: response.setWidth(39),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage(backIcon)
                                      ),
                                  color: kcWhiteColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(
                                        15,
                                        0,
                                        0,
                                        0,
                                      ),
                                      spreadRadius: 0.7,
                                      blurRadius: 6,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 19, top: 10),
                    child: Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                         
                        },
                        child: Container(
                          height: response.setHeight(39),
                          width: response.setWidth(39),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(profilePicture)),
                            color: kcWhiteColor,
                          ),
                          // child: Image.asset(),
                        ),
                      );
                    }),
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      verticalSpaceMedium,
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: driveDetailsSearch,
                            focusColor: kcLightGreyColor,
                            suffixIcon: const Icon(Icons.search),
                            filled: true,
                            hintStyle: const TextStyle(color: kcGreyColor),
                            fillColor: Colors.white70),
                      ),
                      verticalSpaceLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                driveIcon,
                                scale: 40,
                              ),
                              horizontalSpaceSmall,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CloudText.subHeading(
                                    text: driveDetailsTotal,
                                    color: kcBlackColor,
                                  ),
                                  verticalSpaceTiny,
                                  CloudText.subHeading(
                                    text: driveDetailsGB,
                                    color: kcGreenColor,
                                  ),
                                ],
                              )
                            ],
                          ),
                          CloudText.body(
                            text: driveDetailsEx,
                            color: kcGreyColor,
                          )
                        ],
                      ),
                      verticalSpaceLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CloudText.headerTwo(text: driveDetailsFile),
                          Row(
                            children: [
                              CloudText.headerThree(
                                text: driveDetailsRecent,
                                color: kcGreyColor,
                              ),
                              horizontalSpaceTiny,
                              const Icon(
                                FontAwesomeIcons.angleDown,
                                color: kcGreyColor,
                                size: 20,
                              ),
                              horizontalSpaceSmall,
                              const Icon(
                                FontAwesomeIcons.slidersH,
                                color: kcGreyColor,
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: response.setHeight(400),
                        child: ListView.builder(
                            itemCount: model.list.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: DriveDetailCustomCard(
                                  name: model.list[index].name!,
                                  color: model.list[index].color!,
                                  cretaAt: model.list[index].createAt!,
                                  icon: model.list[index].icon!,
                                  thumbnail: model.list[index].thumbNail!,
                                  total: model.list[index].total!,
                                ),
                              );
                            }),
                      ),
                      verticalSpaceExtraLarge
                    ],
                  ),
                ),
              ),
            ));
  }
}
