import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:cloud_storage_app/constant/app_string.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';
import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';
import 'package:response/response.dart';

final response = ResponseUI.instance;

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  final List<_Menu> _meuns = const [
    _Menu(
        text: shareText,
        iconPath: shareIcon,
        textColor: kcWhiteColor,
        color: Color(0xff583cb2)),
    _Menu(
      text: moveToText,
      iconPath: moveToIcon,
    ),
    _Menu(
      text: fileLocationtext,
      iconPath: fileIcon,
    ),
    _Menu(
      text: deleteText,
      iconPath: deleteIcon,
    ),
  ];

  final List<_Person> _people = const [
    _Person(
        name: firstPersonName,
        email: firstPersonEmail,
        imagePath: personOneImg),
    _Person(
        name: secondPersonName,
        email: secondPersonEmail,
        imagePath: personTwoImg),
    _Person(
        name: thirdPersonName,
        email: thirdPersonEmail,
        imagePath: personThreeImg),
    _Person(
        name: fourthPersonName,
        email: fourthPersonEmail,
        imagePath: personFourImg)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight(context) * 0.65,
        color: kcWhiteColor,
        padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        child: Column(
          children: [
            verticalSpaceSmall,
            SizedBox(
              height: response.setHeight(40),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _meuns.length,
                itemBuilder: ((context, index) => _BuildMenuItem(
                    color: _meuns[index].color,
                    iconPath: _meuns[index].iconPath,
                    text: _meuns[index].text,
                    textColor: _meuns[index].textColor)),
                separatorBuilder: (BuildContext context, int index) =>
                    horizontalSpaceSmall,
              ),
            ),
            verticalSpaceSmall,
            Container(
              height: response.setHeight(60),
              color: kcWhiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 49,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xfff6f5fd),
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                              image: AssetImage(docIcon))),
                    ),
                    horizontalSpaceSmall,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(projectDocumnetText,
                            style: bodyStyle.copyWith(
                                color: const Color(0xff000000),
                                fontSize: response.setFontSize(15))),
                        Text(sendLinkText,
                            style: bodyStyle.copyWith(
                                color: const Color(0xff858585),
                                fontSize: response.setFontSize(11)))
                      ],
                    ),
                    const Spacer(),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(fileSize,
                            style: bodyStyle.copyWith(
                                color: const Color(0xff000000),
                                fontSize: response.setFontSize(12))))
                  ],
                ),
              ),
            ),
            verticalSpaceSmall,
            TextFormField(
              style: bodyStyle,
              decoration: InputDecoration(
                  hintText: searchText,
                  hintStyle: bodyStyle.copyWith(
                      color: const Color(0xff000000),
                      fontSize: response.setFontSize(14)),
                  enabled: false,
                  fillColor: const Color(0xfff6f5fd),
                  filled: true,
                  disabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: ListView.separated(
                    itemBuilder: ((context, index) => _BuildPersonDetails(
                          email: _people[index].email,
                          name: _people[index].name,
                          imagePath: _people[index].imagePath,
                        )),
                    separatorBuilder: (_, __) => verticalSpaceSmall,
                    itemCount: _people.length),
              ),
            ),
            verticalSpaceSmall,
            Container(
              height: response.setHeight(60),
              color: kcWhiteColor,
              child: Row(
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff583cb2),
                        image: DecorationImage(image: AssetImage(linkIcon))),
                  ),
                  horizontalSpaceSmall,
                  Text(getLinkText,
                      style: bodyStyle.copyWith(
                          color: const Color(0xff000000),
                          fontSize: response.setFontSize(16))),
                  const Spacer(),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(copyLinkText,
                          style: bodyStyle.copyWith(
                              color: const Color(0xff583cb2),
                              fontSize: response.setFontSize(13))))
                ],
              ),
            ),
          ],
        ));
  }
}

class _BuildMenuItem extends StatelessWidget {
  final Color color;
  final String iconPath;
  final String text;
  final Color textColor;
  const _BuildMenuItem(
      {Key? key,
      required this.color,
      required this.iconPath,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: response.setHeight(37),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      padding: EdgeInsets.symmetric(horizontal: response.setWidth(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(iconPath),
          horizontalSpaceTiny,
          Text(text,
              style:
                  TextStyle(color: textColor, fontSize: response.setHeight(12)))
        ],
      ),
    );
  }
}

class _BuildPersonDetails extends StatelessWidget {
  final String name;
  final String email;
  final String imagePath;
  const _BuildPersonDetails(
      {Key? key,
      required this.name,
      required this.email,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: response.setHeight(60),
      color: kcWhiteColor,
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xfff6f5fd),
                image:  DecorationImage(
                  fit: BoxFit.contain,
                    image: AssetImage(imagePath))),
          ),
          horizontalSpaceSmall,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: bodyStyle.copyWith(
                      color: const Color(0xff000000),
                      fontSize: response.setFontSize(14))),
                      verticalSpaceTiny,
              Text(email,
                  style: bodyStyle.copyWith(
                      color: const Color(0xff858585),
                      fontSize: response.setFontSize(11)))
            ],
          ),
          const Spacer(),
          const Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xfff6f5fd),
                child: Icon(Icons.add, color: Colors.black,)))
        ],
      ),
    );
  }
}

class _Menu {
  final String text;
  final String iconPath;
  final Color color;
  final Color textColor;
  const _Menu(
      {required this.text,
      required this.iconPath,
      this.color = const Color(0xfff6f5fd),
      this.textColor = const Color(0xff686868)});
}

class _Person {
  final String name;
  final String imagePath;
  final String email;
  const _Person(
      {required this.name, required this.email, required this.imagePath});
}
