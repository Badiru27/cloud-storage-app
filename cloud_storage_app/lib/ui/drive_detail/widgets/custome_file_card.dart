import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:response/response.dart';
import 'package:cloud_storage_app/ui/drive_detail/widgets/stacked_image.dart';
import 'package:cloud_storage_app/ui/shared/spacing.dart';

class DriveDetailCustomCard extends StatelessWidget {
  final String name;
  final String cretaAt;
  final String total;
  final String icon;
  final Color color;
  final List<String> thumbnail;
  DriveDetailCustomCard({
    Key? key,
    required this.name,
    required this.cretaAt,
    required this.total,
    required this.icon,
    required this.color,
    required this.thumbnail,
  }) : super(key: key);

  final response = ResponseUI.instance;
  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.7;
    return Container(
      decoration: BoxDecoration(
          color: kcLightGreyColor, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(icon),
                  ),
                ),
                horizontalSpaceSmall,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CloudText.subHeading(
                      text: name,
                    ),
                    verticalSpaceTiny,
                    CloudText.caption(
                      text: cretaAt,
                      color: kcGreyColor,
                    ),
                    verticalSpaceSmall,
                    CloudText.subHeading(text: total)
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  FontAwesomeIcons.ellipsisV,
                  size: 20,
                  color: kcGreyColor,
                ),
                verticalSpaceSmall,
                Container(
                  height: 30,
                  width: 90,
                  alignment: Alignment.bottomRight,
                  child: StackImages(
                    urlImages: thumbnail,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
