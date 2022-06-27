import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:cloud_storage_app/ui/home/home_viewmodel.dart';
import 'package:cloud_storage_app/ui/menue/menue_view.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_storage_app/ui/shared/widgets/bottom_sheet.dart';
import 'package:cloud_ui/shared/colors.dart';
import 'package:cloud_ui/shared/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:response/response.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final response = ResponseUI.instance;
  final List<_Drive> drives = [
    const _Drive(
        name: googleDriveText,
        exp: googleDriveExpText,
        storage: googleDriveSpace,
        imgPath: googleDriveIcon,
        color: kcGreenColor),
    const _Drive(
        name: dropBoxText,
        exp: dropBoxExpText,
        storage: dropBoxDriveSpace,
        imgPath: dropBoxIcon,
        color: kcYellowColor),
    const _Drive(
        name: oneDriveText,
        exp: oneDriveExpText,
        storage: oneDriveSpaceText,
        imgPath: oneDriveIcon,
        color: kcRedColor),
  ];

  final List<_Folder> folders = [
    const _Folder(
        name: imageText,
        createdAt: imageCreatedAt,
        space: imageSpace,
        imgPath: imageIcon,
        folderImgPath: folderBlueImage,
        textColor: Colors.white,
        color: kcWhiteColor),
    const _Folder(
        name: documentText,
        createdAt: documnetCreatedAt,
        space: documentSpace,
        imgPath: documentIconText,
        textColor: Color(0xfff3d335),
        color: Color(0xfffff4be)),
    const _Folder(
        name: designText,
        createdAt: designCreateAt,
        space: designStorage,
        imgPath: designIcon,
        textColor: Color(0xff20c577),
        color: Color(0xffb7ffdd)),
    const _Folder(
        name: mobileApp,
        createdAt: mobileAppCreatedAt,
        space: mobileAppStorage,
        imgPath: mobileIcon,
        textColor: Color(0xfff34b99),
        color: Color(0xffffd6e9)),
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcWhiteColor,
        appBar: AppBar(
          backgroundColor: kcWhiteColor,
          elevation: 0.0,
          toolbarHeight: 60,
          systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: kcWhiteColor,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
          leading: Builder(
              builder: (context) => Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 10),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: response.setHeight(39),
                          width: response.setWidth(39),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage(meunIcon)),
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
                    Scaffold.of(context).showBottomSheet(
                      (context) => const MyBottomSheet(),
                    );
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
            padding: const EdgeInsets.only(left: 16, right: 19, top: 35),
            child: Column(
              children: [
                verticalSpaceSmall,
                SizedBox(
                  height: 139,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 97,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff563ab1),
                              Color(0xff654bb5),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 12),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(cloudImage),
                                    horizontalSpaceSmall,
                                    Text(
                                      '$usedText ${(400 ~/ 70)}%',
                                      style: bodyStyle.copyWith(
                                          color: kcWhiteColor),
                                    )
                                  ],
                                ),
                                Text(
                                  driveSpaceText,
                                  style:
                                      bodyStyle.copyWith(color: kcWhiteColor),
                                )
                              ],
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      upgradeText,
                                      style: bodyStyle.copyWith(
                                          color: kcWhiteColor),
                                    ),
                                    horizontalSpaceSmall,
                                    Image.asset(coinImage),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: response.setHeight(9),
                                          width: response.setWidth(13),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: kcWhiteColor),
                                        ),
                                        horizontalSpaceTiny,
                                        Text(
                                          freeText,
                                          style: bodyStyle.copyWith(
                                              color: kcWhiteColor,
                                              fontSize:
                                                  response.setFontSize(13)),
                                        ),
                                      ],
                                    ),
                                    horizontalSpaceSmall,
                                    Row(
                                      children: [
                                        Container(
                                          height: response.setHeight(9),
                                          width: response.setWidth(13),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: kcYellowColor),
                                        ),
                                        horizontalSpaceTiny,
                                        Text(
                                          usedText,
                                          style: bodyStyle.copyWith(
                                              color: kcYellowColor,
                                              fontSize:
                                                  response.setFontSize(13)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: response.setHeight(58),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 92,
                              width: 92,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kcWhiteColor,
                              ),
                            ),
                            CircularPercentIndicator(
                              radius: 92.0,
                              lineWidth: 5.0,
                              percent: 70 / 400,
                              progressColor: kcYellowColor,
                              backgroundColor: Colors.grey.shade400,
                            ),
                            Positioned(
                              top: response.setHeight(12),
                              child: Container(
                                height: 62,
                                width: 62,
                                alignment: Alignment.center,
                                child: const Text(
                                  spaceText,
                                  style: bodyStyle,
                                ),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kcWhiteColor,
                                    boxShadow: [
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
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // verticalSpaceMedium,
                SizedBox(
                  height: response.setHeight(130),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => SizedBox(
                          height: 130,
                          child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 90,
                                width: 145,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 7),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: response.setHeight(32),
                                          width: response.setWidth(32),
                                          decoration: BoxDecoration(
                                            color: kcWhiteColor,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    drives[index].imgPath)),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        horizontalSpaceTiny,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              drives[index].name,
                                              style: bodyStyle.copyWith(
                                                  fontSize:
                                                      response.setFontSize(12)),
                                            ),
                                            Text(
                                              drives[index].exp,
                                              style: bodyStyle.copyWith(
                                                  fontSize:
                                                      response.setFontSize(9),
                                                  color:
                                                      const Color(0xff787878)),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xfff6f5fd)),
                              ),
                              Positioned(
                                top: response.setHeight(75),
                                child: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xfff6f5fd),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: response.setHeight(80),
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kcWhiteColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: response.setHeight(80),
                                child: CircularPercentIndicator(
                                  radius: 38.0,
                                  lineWidth: 5.0,
                                  percent: 200 / 400,
                                  progressColor: drives[index].color,
                                  center: Text(
                                    drives[index].storage,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: bodyStyle.copyWith(
                                        fontSize: response.setFontSize(8),
                                        color: const Color(0xff9b9b9b)),
                                  ),
                                  backgroundColor: kcWhiteColor,
                                ),
                              ),
                            ],
                          ),
                        )),
                    itemCount: 3,
                    separatorBuilder: (BuildContext context, int index) =>
                        horizontalSpaceMedium,
                  ),
                ),
                verticalSpaceSmall,
                Row(
                  children: [
                    Text(
                      recentlyCreatedFolderText,
                      style: bodyStyle.copyWith(
                        fontSize: response.setFontSize(16),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 34,
                      width: 34,
                      alignment: Alignment.center,
                      child: const Icon(Icons.add),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kcWhiteColor,
                          boxShadow: [
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
                          ]),
                    ),
                  ],
                ),
                verticalSpaceTiny,
                SizedBox(
                  height: response.setHeight(300),
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 3,
                        crossAxisSpacing: response.setWidth(23)),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(folders[index].folderImgPath),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 48.0, left: 11, right: 11, bottom: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      folders[index].name,
                                      style: bodyStyle.copyWith(
                                          color:
                                              index == 0 ? kcWhiteColor : null,
                                          fontSize: response.setFontSize(14)),
                                    ),
                                    Text(
                                      folders[index].createdAt,
                                      style: bodyStyle.copyWith(
                                          color:
                                              index == 0 ? kcWhiteColor : null,
                                          fontSize: response.setFontSize(9)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.more_vert_rounded,
                                  color: index == 0
                                      ? kcWhiteColor
                                      : const Color(0xff858585),
                                )
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  folders[index].space,
                                  style: bodyStyle.copyWith(
                                      color: folders[index].textColor,
                                      fontSize: response.setFontSize(14)),
                                ),
                                const Spacer(),
                                Container(
                                  height: 40,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: folders[index].color),
                                  child: Image.asset(
                                    folders[index].imgPath,
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpaceSmall,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    recentlyUploaded,
                    style: bodyStyle.copyWith(
                      fontSize: response.setFontSize(16),
                    ),
                  ),
                ),
                verticalSpaceSmall,
                Container(
                  height: response.setHeight(60),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 246, 245, 253)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage(docIcon)),
                              shape: BoxShape.circle,
                              color: kcWhiteColor),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(bankAppProject,
                                style: bodyStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: response.setFontSize(11))),
                            Text(bankAppCreatedAt,
                                style: bodyStyle.copyWith(
                                    fontSize: response.setFontSize(9)))
                          ],
                        ),
                        const Spacer(),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(bankAppProjectSpace,
                                style: bodyStyle.copyWith(
                                    color: const Color(0xff858585),
                                    fontSize: response.setFontSize(11))))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const Drawer(child: MenueView()),
        ),
      ),
    );
  }
}

class _Drive {
  final String name;
  final String exp;
  final String storage;
  final String imgPath;
  final Color color;

  const _Drive(
      {required this.name,
      required this.exp,
      required this.storage,
      required this.imgPath,
      required this.color});
}

class _Folder {
  final String name;
  final String createdAt;
  final String space;
  final Color color;
  final String folderImgPath;
  final String imgPath;
  final Color textColor;

  const _Folder(
      {required this.name,
      required this.createdAt,
      required this.space,
      required this.color,
      required this.imgPath,
      required this.textColor,
      this.folderImgPath = folderImage});
}
